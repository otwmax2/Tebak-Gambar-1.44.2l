###### Class l3.l (l3.l)
.class public final Ll3/l;
.super Ljava/lang/Object;
.source "ForcedSender.java"


# direct methods
.method public static a(Lj3/f;Lj3/d;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/f<",
            "*>;",
            "Lj3/d;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ll3/s;

    if-eqz v0, :cond_1b

    .line 2
    check-cast p0, Ll3/s;

    .line 3
    invoke-virtual {p0}, Ll3/s;->d()Ll3/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll3/p;->f(Lj3/d;)Ll3/p;

    move-result-object p0

    .line 4
    invoke-static {}, Ll3/u;->c()Ll3/u;

    move-result-object p1

    invoke-virtual {p1}, Ll3/u;->e()Ls3/s;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ls3/s;->u(Ll3/p;I)Lm3/g;

    goto :goto_22

    :cond_1b
    const-string p1, "ForcedSender"

    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    .line 5
    invoke-static {p1, v0, p0}, Lp3/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_22
    return-void
.end method
