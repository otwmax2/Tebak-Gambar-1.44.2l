###### Class i1.t (i1.t)
.class public abstract Li1/t;
.super Ljava/lang/Object;
.source "WorkManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AddedAbstractMethod"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Li1/t;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lj1/i;->k()Lj1/i;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Landroid/content/Context;)Li1/t;
    .registers 1

    .line 1
    invoke-static {p0}, Lj1/i;->l(Landroid/content/Context;)Lj1/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroidx/work/a;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lj1/i;->f(Landroid/content/Context;Landroidx/work/a;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Li1/m;
.end method

.method public final b(Li1/u;)Li1/m;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/t;->c(Ljava/util/List;)Li1/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/util/List;)Li1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;)",
            "Li1/m;"
        }
    .end annotation
.end method
