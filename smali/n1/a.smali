###### Class n1.a (n1.a)
.class public Ln1/a;
.super Ln1/c;
.source "BatteryChargingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/a;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lo1/g;->c(Landroid/content/Context;Ls1/a;)Lo1/g;

    move-result-object p1

    invoke-virtual {p1}, Lo1/g;->a()Lo1/a;

    move-result-object p1

    invoke-direct {p0, p1}, Ln1/c;-><init>(Lo1/d;)V

    return-void
.end method


# virtual methods
.method b(Lq1/p;)Z
    .registers 2

    .line 1
    iget-object p1, p1, Lq1/p;->j:Li1/b;

    invoke-virtual {p1}, Li1/b;->g()Z

    move-result p1

    return p1
.end method

.method bridge synthetic c(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ln1/a;->i(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method i(Ljava/lang/Boolean;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
