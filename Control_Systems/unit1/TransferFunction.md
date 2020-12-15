# Transfer Function

![Transfer Function](img/image_2020-07-22-11-22-35.png)

```mermaid

graph LR
   id1["x(t)"]-->|"h(t)"|id2["y(t)"]
```

$$
    Y(t) = x(t) \circledast h(t) \\
    X(s) \times H(s) = Y(s)
$$

**Applicable for LTI Systems only**
**All Initial conidition should be zero**

$$
 G(s) = \frac{L\{Output\}}{L\{Input\}}, at\ zero \ inital \ condition
$$

![Disadvantages of transfer function](2020-07-22-11-34-20.png)

![closed-loop systems](2020-07-22-11-36-00.png)

![Closed-loop](2020-07-22-11-44-25.png)

\pagebreak

```mermaid
graph LR
    a-->id1((x))
    id1-->b
```

```mermaid {filename="output.png"}
graph LR
        START[ ]-->A[Sample Text]
        A-->B
        B-->A
        B-->STOP[ ]

        style START fill:#FFFFFF, stroke:#FFFFFF;
        style STOP  fill:#FFFFFF, stroke:#FFFFFF;
```
\pagebreak

## Block Diagram Reduction Techniques

1. Cascading of Block in series.:

![Casading of Blocks](img/Cascading.png)

2. Cascading of Blocks in Paralled:

![Cascading in Parallel](img/CascadingParallel.png)

3. Feedback Path:

![Reduction of FeedbackLoop](img/FeedbackPath.png)

4. Moving the take off point after/ before a block:

![Moving the take off point](img/AfterorBeforePoint.png)

5. Moving the summing point:

![Moving The summing Point](img/MovingSummingPoint.png)

6. Splitting/ Joining of Summing Points:

![Splitting/Joining of Summing Points](img/SplittingJoingSummingpoint.png)

7. Moving a Take-off Point After / before a summing Points:

![Moving a takeoff point](img/TakeOFFPointMove.png)

8. Exchaging of Two Summing Point
	- Can be easily changed with no effect
