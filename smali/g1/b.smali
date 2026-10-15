###### Class g1.b (g1.b)
.class public Lg1/b;
.super Lg1/q;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg1/q;-><init>()V

    .line 2
    invoke-direct {p0}, Lg1/b;->t0()V

    return-void
.end method

.method private t0()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lg1/q;->q0(I)Lg1/q;

    .line 2
    new-instance v1, Lg1/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg1/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    move-result-object v1

    new-instance v2, Lg1/c;

    invoke-direct {v2}, Lg1/c;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    move-result-object v1

    new-instance v2, Lg1/d;

    invoke-direct {v2, v0}, Lg1/d;-><init>(I)V

    .line 4
    invoke-virtual {v1, v2}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    return-void
.end method
