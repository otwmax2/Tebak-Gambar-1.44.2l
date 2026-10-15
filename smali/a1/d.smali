###### Class a1.d (a1.d)
.class public final La1/d;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/d$a;
    }
.end annotation


# static fields
.field public static final d:La1/d$a;


# instance fields
.field private final a:La1/e;

.field private final b:La1/c;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, La1/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La1/d$a;-><init>(Lt9/g;)V

    sput-object v0, La1/d;->d:La1/d$a;

    return-void
.end method

.method private constructor <init>(La1/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/d;->a:La1/e;

    .line 2
    new-instance p1, La1/c;

    invoke-direct {p1}, La1/c;-><init>()V

    iput-object p1, p0, La1/d;->b:La1/c;

    return-void
.end method

.method public synthetic constructor <init>(La1/e;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, La1/d;-><init>(La1/e;)V

    return-void
.end method

.method public static final a(La1/e;)La1/d;
    .registers 2

    sget-object v0, La1/d;->d:La1/d$a;

    invoke-virtual {v0, p0}, La1/d$a;->a(La1/e;)La1/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()La1/c;
    .registers 2

    .line 1
    iget-object v0, p0, La1/d;->b:La1/c;

    return-object v0
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, La1/d;->a:La1/e;

    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/j$c;->p:Landroidx/lifecycle/j$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_2b

    .line 3
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, La1/d;->a:La1/e;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(La1/e;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/m;)V

    .line 4
    iget-object v1, p0, La1/d;->b:La1/c;

    invoke-virtual {v1, v0}, La1/c;->e(Landroidx/lifecycle/j;)V

    .line 5
    iput-boolean v3, p0, La1/d;->c:Z

    return-void

    .line 6
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, La1/d;->c:Z

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, La1/d;->c()V

    .line 3
    :cond_7
    iget-object v0, p0, La1/d;->a:La1/e;

    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/j$c;->c(Landroidx/lifecycle/j$c;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    .line 5
    iget-object v0, p0, La1/d;->b:La1/c;

    invoke-virtual {v0, p1}, La1/c;->f(Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, La1/d;->b:La1/c;

    invoke-virtual {v0, p1}, La1/c;->g(Landroid/os/Bundle;)V

    return-void
.end method

###### Class a1.d.a (a1.d$a)
.class public final La1/d$a;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, La1/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La1/e;)La1/d;
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, La1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La1/d;-><init>(La1/e;Lt9/g;)V

    return-object v0
.end method
