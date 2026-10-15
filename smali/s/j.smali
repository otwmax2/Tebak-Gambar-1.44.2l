###### Class s.j (s.j)
.class public Ls/j;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Ls/j;->a:[Z

    return-void
.end method

.method static a(Ls/f;Lp/d;Ls/e;)V
    .registers 9

    const/4 v0, -0x1

    .line 1
    iput v0, p2, Ls/e;->t:I

    .line 2
    iput v0, p2, Ls/e;->u:I

    .line 3
    iget-object v0, p0, Ls/e;->Z:[Ls/e$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Ls/e$b;->p:Ls/e$b;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_47

    iget-object v0, p2, Ls/e;->Z:[Ls/e$b;

    aget-object v0, v0, v1

    sget-object v1, Ls/e$b;->r:Ls/e$b;

    if-ne v0, v1, :cond_47

    .line 4
    iget-object v0, p2, Ls/e;->O:Ls/d;

    iget v0, v0, Ls/d;->g:I

    .line 5
    invoke-virtual {p0}, Ls/e;->U()I

    move-result v1

    iget-object v4, p2, Ls/e;->Q:Ls/d;

    iget v4, v4, Ls/d;->g:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p2, Ls/e;->O:Ls/d;

    invoke-virtual {p1, v4}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v5

    iput-object v5, v4, Ls/d;->i:Lp/i;

    .line 7
    iget-object v4, p2, Ls/e;->Q:Ls/d;

    invoke-virtual {p1, v4}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v5

    iput-object v5, v4, Ls/d;->i:Lp/i;

    .line 8
    iget-object v4, p2, Ls/e;->O:Ls/d;

    iget-object v4, v4, Ls/d;->i:Lp/i;

    invoke-virtual {p1, v4, v0}, Lp/d;->f(Lp/i;I)V

    .line 9
    iget-object v4, p2, Ls/e;->Q:Ls/d;

    iget-object v4, v4, Ls/d;->i:Lp/i;

    invoke-virtual {p1, v4, v1}, Lp/d;->f(Lp/i;I)V

    .line 10
    iput v3, p2, Ls/e;->t:I

    .line 11
    invoke-virtual {p2, v0, v1}, Ls/e;->L0(II)V

    .line 12
    :cond_47
    iget-object v0, p0, Ls/e;->Z:[Ls/e$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_a4

    iget-object v0, p2, Ls/e;->Z:[Ls/e$b;

    aget-object v0, v0, v1

    sget-object v1, Ls/e$b;->r:Ls/e$b;

    if-ne v0, v1, :cond_a4

    .line 13
    iget-object v0, p2, Ls/e;->P:Ls/d;

    iget v0, v0, Ls/d;->g:I

    .line 14
    invoke-virtual {p0}, Ls/e;->v()I

    move-result p0

    iget-object v1, p2, Ls/e;->R:Ls/d;

    iget v1, v1, Ls/d;->g:I

    sub-int/2addr p0, v1

    .line 15
    iget-object v1, p2, Ls/e;->P:Ls/d;

    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v2

    iput-object v2, v1, Ls/d;->i:Lp/i;

    .line 16
    iget-object v1, p2, Ls/e;->R:Ls/d;

    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v2

    iput-object v2, v1, Ls/d;->i:Lp/i;

    .line 17
    iget-object v1, p2, Ls/e;->P:Ls/d;

    iget-object v1, v1, Ls/d;->i:Lp/i;

    invoke-virtual {p1, v1, v0}, Lp/d;->f(Lp/i;I)V

    .line 18
    iget-object v1, p2, Ls/e;->R:Ls/d;

    iget-object v1, v1, Ls/d;->i:Lp/i;

    invoke-virtual {p1, v1, p0}, Lp/d;->f(Lp/i;I)V

    .line 19
    iget v1, p2, Ls/e;->l0:I

    if-gtz v1, :cond_8d

    invoke-virtual {p2}, Ls/e;->T()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9f

    .line 20
    :cond_8d
    iget-object v1, p2, Ls/e;->S:Ls/d;

    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v2

    iput-object v2, v1, Ls/d;->i:Lp/i;

    .line 21
    iget-object v1, p2, Ls/e;->S:Ls/d;

    iget-object v1, v1, Ls/d;->i:Lp/i;

    iget v2, p2, Ls/e;->l0:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lp/d;->f(Lp/i;I)V

    .line 22
    :cond_9f
    iput v3, p2, Ls/e;->u:I

    .line 23
    invoke-virtual {p2, v0, p0}, Ls/e;->c1(II)V

    :cond_a4
    return-void
.end method

.method public static final b(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method
