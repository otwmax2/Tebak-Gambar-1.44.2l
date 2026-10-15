###### Class fa.g (fa.g)
.class public final Lfa/g;
.super Ljava/lang/Object;
.source "Channel.kt"


# direct methods
.method public static final a(ILfa/e;Ls9/l;)Lfa/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lfa/e;",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)",
            "Lfa/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_51

    const/4 v0, -0x1

    if-eq p0, v0, :cond_37

    if-eqz p0, :cond_27

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_21

    if-ne p0, v1, :cond_1a

    .line 1
    sget-object v0, Lfa/e;->p:Lfa/e;

    if-ne p1, v0, :cond_1a

    .line 2
    new-instance p0, Lfa/l;

    invoke-direct {p0, p2}, Lfa/l;-><init>(Ls9/l;)V

    goto :goto_60

    .line 3
    :cond_1a
    new-instance v0, Lfa/d;

    invoke-direct {v0, p0, p1, p2}, Lfa/d;-><init>(ILfa/e;Ls9/l;)V

    move-object p0, v0

    goto :goto_60

    .line 4
    :cond_21
    new-instance p0, Lfa/m;

    invoke-direct {p0, p2}, Lfa/m;-><init>(Ls9/l;)V

    goto :goto_60

    .line 5
    :cond_27
    sget-object p0, Lfa/e;->o:Lfa/e;

    if-ne p1, p0, :cond_31

    .line 6
    new-instance p0, Lfa/q;

    invoke-direct {p0, p2}, Lfa/q;-><init>(Ls9/l;)V

    goto :goto_60

    .line 7
    :cond_31
    new-instance p0, Lfa/d;

    invoke-direct {p0, v1, p1, p2}, Lfa/d;-><init>(ILfa/e;Ls9/l;)V

    goto :goto_60

    .line 8
    :cond_37
    sget-object p0, Lfa/e;->o:Lfa/e;

    if-ne p1, p0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_45

    .line 9
    new-instance p0, Lfa/l;

    invoke-direct {p0, p2}, Lfa/l;-><init>(Ls9/l;)V

    goto :goto_60

    .line 10
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_51
    new-instance p0, Lfa/d;

    .line 12
    sget-object v0, Lfa/e;->o:Lfa/e;

    if-ne p1, v0, :cond_5d

    sget-object v0, Lfa/f;->a:Lfa/f$a;

    invoke-virtual {v0}, Lfa/f$a;->a()I

    move-result v1

    .line 13
    :cond_5d
    invoke-direct {p0, v1, p1, p2}, Lfa/d;-><init>(ILfa/e;Ls9/l;)V

    :goto_60
    return-object p0
.end method

.method public static synthetic b(ILfa/e;Ls9/l;ILjava/lang/Object;)Lfa/f;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p0, 0x0

    :cond_5
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_b

    .line 1
    sget-object p1, Lfa/e;->o:Lfa/e;

    :cond_b
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_10

    const/4 p2, 0x0

    .line 2
    :cond_10
    invoke-static {p0, p1, p2}, Lfa/g;->a(ILfa/e;Ls9/l;)Lfa/f;

    move-result-object p0

    return-object p0
.end method
