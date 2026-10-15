###### Class androidx.lifecycle.i0 (androidx.lifecycle.i0)
.class public final synthetic Landroidx/lifecycle/i0;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/lifecycle/h0$b;->a:Landroidx/lifecycle/h0$b$a;

    return-void
.end method

.method public static a(Landroidx/lifecycle/h0$b;Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 2

    const-string p0, "modelClass"

    .line 1
    invoke-static {p1, p0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroidx/lifecycle/h0$b;Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;
    .registers 4

    const-string v0, "modelClass"

    .line 1
    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0, p1}, Landroidx/lifecycle/h0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p0

    return-object p0
.end method
