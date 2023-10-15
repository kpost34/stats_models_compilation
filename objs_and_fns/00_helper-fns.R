#Created by Keith Post on 10/14/23
#Helper functions


make_anova_boxplot <- function(data, facet=FALSE) {
  data %>%
    ggplot(aes(x=group, y=value)) +
    geom_boxplot(outlier.shape=NA) +
    geom_jitter(aes(color=group), size=2) +
    scale_color_manual(values=c("x"="darkred", "y"="darkblue", "z"="aquamarine4"),
                       guide="none") +
    {if(facet) facet_wrap(~transform_type, scales="free")} +
    labs(x="") +
    theme_bw(base_size=16) +
    theme(legend.position="bottom")
}







