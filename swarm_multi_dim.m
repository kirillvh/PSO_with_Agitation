%The MIT License (MIT), Copyright (c) 2015 Kirill Van Heerden, see License.txt for details

function [gbestsHist,gbests] = swarm_multi_dim(mode,use_agitation,nruns,Nparticles,nsims,NDim)
%Particle swarm optimizer with agitation term for Ackley and Rosenbrock
%functions.
%Run main.m for main result.
%Ref: K. Van Heerden, Y. Fujimoto, A. Kawamura, "A combination of particle swarm optimization and model predictive control
%on graphics hardware for real-time trajectory planning of the
%under-actuated nonlinear acrobot", in IEEE 13th international workshop on
%Advanced Motion Control, pp. 1942-1945, 2014
switch mode
    case 'rosenbrock'
        %rosenbrock
        f = @(x) rosenbrock(x,NDim);
    otherwise
        %ackley
        f=@(x)-20*exp( -0.2*sqrt( (1/size(x,1))*(x'*x)) ) -exp(1/size(x,1)*sum(cos(2*pi*x)) )+exp(1)+20;
end

gbestsHist = zeros(nsims,nruns);
gbests=zeros(nruns,1);

for k=1:nsims;



dimrange=30;
c1 = 1.7;
c2 = 1.7;
if true(use_agitation)
    switch mode
        case 'rosenbrock'
            %rosenbrock n=2
            c3=1E-7;
        otherwise
            %ackley
            c3=1E-1;
    end
else 
    c3 = 0;
end

w = 0.715;

%initialValue = 2000;

x = cell(Nparticles,nruns);
v = cell(Nparticles,nruns);
localBest = cell(Nparticles,nruns);


globalBestValue = inf;
for i = 1:Nparticles
    x{i,1} = dimrange*rand(NDim,1);
    x{i,2} = dimrange*rand(NDim,1);
    localBest{i,2} = x{i,2};
    
        if f(localBest{i,2}) < globalBestValue
            globalBest = localBest{i,2};
            globalBestValue = f(localBest{i,2});
        end
end

for i = 3:nruns
    for j = 1:Nparticles
        r1 = rand;
        r2 = rand;
        r3 = 2.0*(rand(NDim,1)-0.5*ones(NDim,1));
        
        fittness = f(x{j,i-1});

        
        if fittness < f(localBest{j,i-1})
            localBest{j,i} = x{j,i-1};
        else
            localBest{j,i} = localBest{j,i-1};
        end        
                
        x{j,i} = (1+w-c1*r1-c2*r2)*x{j,i-1} -w*x{j,i-2} + c1*r1*localBest{j,i-1} + c2*r2*globalBest + c3*r3*fittness;        
        %constrain the particles within dimrange
        x{j,i} = sign(x{j,i}).*min(abs(x{j,i}),dimrange*ones(NDim,1));
        
    end
    %find best global position
    for ii = 1:Nparticles
        if f(localBest{ii,i}) < globalBestValue
            globalBest = localBest{ii,i};
            globalBestValue = f(localBest{ii,i});
        end
    end
    %record best global value
    gbestsHist(k,i) = globalBestValue;
    
end

end

%log of the mean of the global best values at each iteration
for i=1:nruns
    gbests(i) = log(mean(gbestsHist(:,i)));
end
