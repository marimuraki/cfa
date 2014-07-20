* Clean data 
* Compute aggregate totals

	global dir "C:\Users\muraki\Dropbox\CfA"
    
    clear all
    
    insheet using "$dir\Violations-2012.csv", clear
    
    foreach var in violation_date violation_date_closed {
        split `var', parse(" ")
        drop `var' `var'2
        rename `var'1 `var'
        gen `var'_fmt = date(`var', "YMD")
        format `var'_fmt %td
        split `var', parse("-")    
        rename `var'1 `var'_yr
        rename `var'2 `var'_mn
        rename `var'3 `var'_dy
    }    
    
    outsheet using "$dir\Violations-2012-fmt.csv", replace c
    
    insheet using "$dir\Violations-2012-fmt.csv", clear
    
    gen total = 1
    
    collapse (sum) total, by(violation_category violation_date_yr violation_date_mn)
    
    outsheet using "$dir\Violations-2012-agg.csv", replace c