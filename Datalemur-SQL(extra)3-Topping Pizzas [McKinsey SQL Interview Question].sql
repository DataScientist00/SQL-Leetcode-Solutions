#problem link-->> https://datalemur.com/questions/pizzas-topping-cost

SELECT CONCAT(t1.topping_name,',',t2.topping_name,',',t3.topping_name) AS pizza,
        t1.ingredient_cost + t2.ingredient_cost + t3.ingredient_cost AS total_Cost
FROM pizza_toppings t1
CROSS JOIN pizza_toppings t2
CROSS JOIN pizza_toppings t3
WHERE t1.topping_name < t2.topping_name AND 
      t2.topping_name < t3.topping_name
ORDER BY total_cost DESC , pizza;
