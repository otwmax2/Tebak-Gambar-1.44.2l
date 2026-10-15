###### Class r3.h (r3.h)
.class public abstract Lr3/h;
.super Ljava/lang/Object;
.source "SchedulingModule.java"


# direct methods
.method static a(Landroid/content/Context;Lt3/d;Ls3/g;Lv3/a;)Ls3/y;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 2
    new-instance p3, Ls3/e;

    invoke-direct {p3, p0, p1, p2}, Ls3/e;-><init>(Landroid/content/Context;Lt3/d;Ls3/g;)V

    return-object p3

    .line 3
    :cond_c
    new-instance v0, Ls3/a;

    invoke-direct {v0, p0, p1, p3, p2}, Ls3/a;-><init>(Landroid/content/Context;Lt3/d;Lv3/a;Ls3/g;)V

    return-object v0
.end method
