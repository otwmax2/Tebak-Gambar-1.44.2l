###### Class androidx.lifecycle.j0 (androidx.lifecycle.j0)
.class public final Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# direct methods
.method public static final a(Landroidx/lifecycle/m0;)Ls0/a;
    .registers 2

    const-string v0, "owner"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/i;

    if-eqz v0, :cond_15

    .line 2
    check-cast p0, Landroidx/lifecycle/i;

    invoke-interface {p0}, Landroidx/lifecycle/i;->getDefaultViewModelCreationExtras()Ls0/a;

    move-result-object p0

    const-string v0, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {p0, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    .line 3
    :cond_15
    sget-object p0, Ls0/a$a;->b:Ls0/a$a;

    :goto_17
    return-object p0
.end method
