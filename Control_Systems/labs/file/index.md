---
geometry:
    - top=2cm
    - left=2cm
    - right=2cm
    - bottom=2cm
documentclass: article
header-includes:
    - \usepackage{multicol}
    - \newcommand{\hideFromPandoc}[1]{#1}
    - \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
      }
    - \usepackage{listings}
    - \usepackage{color}
    - \definecolor{dkgreen}{rgb}{0,0.6,0}
    - \definecolor{gray}{rgb}{0.5,0.5,0.5}
    - \definecolor{mauve}{rgb}{0.58,0,0.82}
pagestyle:
    - empty
---

\begin{center}
	\section{Index}
\end{center}


| S.no | Aim Of the Experiment                                                  | Date       |
| ---- | ---------------------                                                  | ----       |
| 1    | To Study the time response of a simulated linear system                | 17/09/2020 |
| 2    | To plot open loop and closed loop speed control of DC servomotor       | 24/09/2020 |
| 3    | To study the position control of the DC servomotor                     | 1/10/2020  |
| 4    | To study the position control of the AC servomotor                     | 8/11/2020  |
| 5    | To find the time response specification of second order system         | 3/10/2020  |
| 6    | To study and plot the polar plot of any higher order transfer function | 10/11/2020 |
| 7    | To study time response of PD, PI and PID controller                    | 17/11/2020 |
| 8    | To study and plot the baud plot of any higher order transfer function  | 24/11/2020 |
