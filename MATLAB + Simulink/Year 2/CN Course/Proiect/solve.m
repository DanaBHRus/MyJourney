[xs,ys,v,relres,iter,resvec]=rectangle_2d_poisson(1, 2, 100, 100, 'x_refine_function','y_refine_function','dirichlet_boundary','forcing');
surf(xs,ys,v,'EdgeColor','none');