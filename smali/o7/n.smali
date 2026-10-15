###### Class o7.n (o7.n)
.class final Lo7/n;
.super Lo7/c;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lo7/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo7/h;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_5
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3
    invoke-virtual {p1}, Lo7/h;->c()C

    move-result v1

    .line 4
    iget v2, p1, Lo7/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lo7/h;->f:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lo7/n;->c(CLjava/lang/StringBuilder;)I

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 7
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_5

    .line 8
    invoke-static {p1, v0}, Lo7/c;->g(Lo7/h;Ljava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {p1}, Lo7/h;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lo7/h;->f:I

    invoke-virtual {p0}, Lo7/n;->e()I

    move-result v3

    invoke-static {v1, v2, v3}, Lo7/j;->n(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lo7/n;->e()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lo7/h;->o(I)V

    .line 12
    :cond_3b
    invoke-virtual {p0, p1, v0}, Lo7/n;->f(Lo7/h;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method c(CLjava/lang/StringBuilder;)I
    .registers 6

    const/16 v0, 0xd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_43

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_35

    const/16 v0, 0x30

    if-lt p1, v0, :cond_21

    const/16 v2, 0x39

    if-gt p1, v2, :cond_21

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_21
    const/16 v0, 0x41

    if-lt p1, v0, :cond_31

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_31

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 3
    :cond_31
    invoke-static {p1}, Lo7/j;->e(C)V

    goto :goto_47

    :cond_35
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 5
    :cond_3a
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_3e
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_43
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_47
    return v1
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method f(Lo7/h;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lo7/h;->p()V

    .line 2
    invoke-virtual {p1}, Lo7/h;->g()Lo7/k;

    move-result-object v0

    invoke-virtual {v0}, Lo7/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lo7/h;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 4
    iget v1, p1, Lo7/h;->f:I

    sub-int/2addr v1, p2

    iput v1, p1, Lo7/h;->f:I

    .line 5
    invoke-virtual {p1}, Lo7/h;->f()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_28

    if-gt v0, v1, :cond_28

    .line 6
    invoke-virtual {p1}, Lo7/h;->f()I

    move-result p2

    if-eq p2, v0, :cond_2d

    :cond_28
    const/16 p2, 0xfe

    .line 7
    invoke-virtual {p1, p2}, Lo7/h;->r(C)V

    .line 8
    :cond_2d
    invoke-virtual {p1}, Lo7/h;->e()I

    move-result p2

    if-gez p2, :cond_37

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lo7/h;->o(I)V

    :cond_37
    return-void
.end method
