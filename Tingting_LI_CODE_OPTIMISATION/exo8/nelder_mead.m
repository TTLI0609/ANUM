function [ret_x] = nelder_mead(f,x0,precision)

maxsteps = 99;
cpt = 0;
dim = length(x0);

% Points simplexe
x = zeros(dim, dim + 1);
scores = zeros(1, dim + 1);
x(:, 1) = x0;
for i = 1 : dim
	x(:, i + 1) = x0;
	x(i, i + 1) = x(i, i + 1) + 1;
end

while cpt < maxsteps
    
	% maj scores
    for i = 1 : dim + 1
		scores(i) = f(x(:, i));
    end
	% trier les points en fonction de scores
	[scores, idx] = sort(scores);
	x = x(:, idx);
    
	% Condition d'arret 
	if cpt > 0
		delta = abs(scores(dim + 1) - worst);
		if delta < precision
			break
		end
	end
	worst = scores(dim + 1);

    
	% Calculer x0 : centre de gravité de tout point
	zero = sum(x(:,1:dim)')' ./ dim;
    % Calculer r : point de reflexion
	r = zero + zero - x(:, dim + 1);

    if f(r) < f(x(:,dim))
		% calculer étirement du simplexe
		e = zero + 2*(zero - x(:, dim + 1));
        if f(e) < f(r)
			x(:, dim + 1) = e;
		else
			x(:, dim + 1) = r;
        end
    
    else 
        % contraction 
        sinon = false;
        c = x(:, dim + 1) + (zero - x(:, dim + 1)) ./ 2;
        if f(c) <= f(x(:,dim))
            x(:, dim + 1) = c;
        else
            sinon = true;
        end

		if sinon
			% homothetie de rapport 1/2
			for i = 2 : dim+1
				x(:, i ) = x(:, 1) + (x(:, i ) - x(:, 1)) ./ 2;
            end
        end 
        
	end
	cpt = cpt + 1;
    disp(x(:, 1))
end %while

ret_x = x(:, 1);

end

