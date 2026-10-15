###### Class androidx.lifecycle.h0 (androidx.lifecycle.h0)
.class public Landroidx/lifecycle/h0;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$b;,
        Landroidx/lifecycle/h0$d;,
        Landroidx/lifecycle/h0$c;,
        Landroidx/lifecycle/h0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/l0;

.field private final b:Landroidx/lifecycle/h0$b;

.field private final c:Ls0/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;)V
    .registers 10

    const-string v0, "store"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/h0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;ILt9/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;)V
    .registers 5

    const-string v0, "store"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/h0;->a:Landroidx/lifecycle/l0;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0$b;

    .line 4
    iput-object p3, p0, Landroidx/lifecycle/h0;->c:Ls0/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;ILt9/g;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    .line 5
    sget-object p3, Ls0/a$a;->b:Ls0/a$a;

    .line 6
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/h0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/m0;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/h0$a;->f:Landroidx/lifecycle/h0$a$a;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/h0$a$a;->a(Landroidx/lifecycle/m0;)Landroidx/lifecycle/h0$b;

    move-result-object v1

    invoke-static {p1}, Landroidx/lifecycle/j0;->a(Landroidx/lifecycle/m0;)Ls0/a;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/lifecycle/h0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/h0$b;)V
    .registers 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Landroidx/lifecycle/j0;->a(Landroidx/lifecycle/m0;)Ls0/a;

    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/h0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/h0$b;Ls0/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/h0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h0;->a:Landroidx/lifecycle/l0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l0;->b(Ljava/lang/String;)Landroidx/lifecycle/g0;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0$b;

    instance-of p2, p1, Landroidx/lifecycle/h0$d;

    if-eqz p2, :cond_1f

    check-cast p1, Landroidx/lifecycle/h0$d;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_2a

    const-string p2, "viewModel"

    invoke-static {v0, p2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0$d;->c(Landroidx/lifecycle/g0;)V

    :cond_2a
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 4
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_30
    new-instance v0, Ls0/d;

    iget-object v1, p0, Landroidx/lifecycle/h0;->c:Ls0/a;

    invoke-direct {v0, v1}, Ls0/d;-><init>(Ls0/a;)V

    .line 6
    sget-object v1, Landroidx/lifecycle/h0$c;->d:Ls0/a$b;

    invoke-virtual {v0, v1, p1}, Ls0/d;->c(Ls0/a$b;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0$b;

    invoke-interface {v1, p2, v0}, Landroidx/lifecycle/h0$b;->b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;

    move-result-object p2

    .line 8
    iget-object v0, p0, Landroidx/lifecycle/h0;->a:Landroidx/lifecycle/l0;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/l0;->d(Ljava/lang/String;Landroidx/lifecycle/g0;)V

    return-object p2
.end method

###### Class androidx.lifecycle.h0.a (androidx.lifecycle.h0$a)
.class public Landroidx/lifecycle/h0$a;
.super Landroidx/lifecycle/h0$c;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$a$a;
    }
.end annotation


# static fields
.field public static final f:Landroidx/lifecycle/h0$a$a;

.field private static g:Landroidx/lifecycle/h0$a;

.field public static final h:Ls0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$b<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/lifecycle/h0$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/h0$a$a;-><init>(Lt9/g;)V

    sput-object v0, Landroidx/lifecycle/h0$a;->f:Landroidx/lifecycle/h0$a$a;

    .line 1
    sget-object v0, Landroidx/lifecycle/h0$a$a$a;->a:Landroidx/lifecycle/h0$a$a$a;

    sput-object v0, Landroidx/lifecycle/h0$a;->h:Ls0/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/lifecycle/h0$a;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/h0$a;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/h0$c;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/h0$a;->e:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic e()Landroidx/lifecycle/h0$a;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/h0$a;->g:Landroidx/lifecycle/h0$a;

    return-object v0
.end method

.method public static final synthetic f(Landroidx/lifecycle/h0$a;)V
    .registers 1

    .line 1
    sput-object p0, Landroidx/lifecycle/h0$a;->g:Landroidx/lifecycle/h0$a;

    return-void
.end method

.method private final g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/g0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/Application;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    .line 1
    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    :try_start_b
    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/g0;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_52
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_26

    const-string p1, "{\n                try {\n\u2026          }\n            }"

    .line 3
    invoke-static {p2, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_82

    :catch_26
    move-exception p2

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3c
    move-exception p2

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_52
    move-exception p2

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_68
    move-exception p2

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_7e
    invoke-super {p0, p1}, Landroidx/lifecycle/h0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p2

    :goto_82
    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h0$a;->e:Landroid/app/Application;

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/h0$a;->g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ls0/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h0$a;->e:Landroid/app/Application;

    if-eqz v0, :cond_13

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/h0$a;->g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/g0;

    move-result-object p1

    goto :goto_2e

    .line 3
    :cond_13
    sget-object v0, Landroidx/lifecycle/h0$a;->h:Ls0/a$b;

    invoke-virtual {p2, v0}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-eqz p2, :cond_22

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/h0$a;->g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/g0;

    move-result-object p1

    goto :goto_2e

    .line 5
    :cond_22
    const-class p2, Landroidx/lifecycle/a;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_2f

    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/h0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    :goto_2e
    return-object p1

    .line 7
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CreationExtras must have an application by `APPLICATION_KEY`"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class androidx.lifecycle.h0.a.C0055a (androidx.lifecycle.h0$a$a)
.class public final Landroidx/lifecycle/h0$a$a;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$a$a$a;
    }
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

    invoke-direct {p0}, Landroidx/lifecycle/h0$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m0;)Landroidx/lifecycle/h0$b;
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroidx/lifecycle/i;

    if-eqz v0, :cond_15

    .line 2
    check-cast p1, Landroidx/lifecycle/i;

    invoke-interface {p1}, Landroidx/lifecycle/i;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/h0$b;

    move-result-object p1

    const-string v0, "owner.defaultViewModelProviderFactory"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1b

    :cond_15
    sget-object p1, Landroidx/lifecycle/h0$c;->b:Landroidx/lifecycle/h0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/h0$c$a;->a()Landroidx/lifecycle/h0$c;

    move-result-object p1

    :goto_1b
    return-object p1
.end method

.method public final b(Landroid/app/Application;)Landroidx/lifecycle/h0$a;
    .registers 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/h0$a;->e()Landroidx/lifecycle/h0$a;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Landroidx/lifecycle/h0$a;

    invoke-direct {v0, p1}, Landroidx/lifecycle/h0$a;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Landroidx/lifecycle/h0$a;->f(Landroidx/lifecycle/h0$a;)V

    .line 3
    :cond_13
    invoke-static {}, Landroidx/lifecycle/h0$a;->e()Landroidx/lifecycle/h0$a;

    move-result-object p1

    invoke-static {p1}, Lt9/m;->b(Ljava/lang/Object;)V

    return-object p1
.end method

###### Class androidx.lifecycle.h0.a.C0055a.C0056a (androidx.lifecycle.h0$a$a$a)
.class final Landroidx/lifecycle/h0$a$a$a;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"

# interfaces
.implements Ls0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$b<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/h0$a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/h0$a$a$a;

    invoke-direct {v0}, Landroidx/lifecycle/h0$a$a$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/h0$a$a$a;->a:Landroidx/lifecycle/h0$a$a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.h0.b (androidx.lifecycle.h0$b)
.class public interface abstract Landroidx/lifecycle/h0$b;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$b$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/h0$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/lifecycle/h0$b$a;->a:Landroidx/lifecycle/h0$b$a;

    sput-object v0, Landroidx/lifecycle/h0$b;->a:Landroidx/lifecycle/h0$b$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ls0/a;",
            ")TT;"
        }
    .end annotation
.end method

###### Class androidx.lifecycle.h0.b.a (androidx.lifecycle.h0$b$a)
.class public final Landroidx/lifecycle/h0$b$a;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/lifecycle/h0$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/h0$b$a;

    invoke-direct {v0}, Landroidx/lifecycle/h0$b$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/h0$b$a;->a:Landroidx/lifecycle/h0$b$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.h0.c (androidx.lifecycle.h0$c)
.class public Landroidx/lifecycle/h0$c;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"

# interfaces
.implements Landroidx/lifecycle/h0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$c$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/h0$c$a;

.field private static c:Landroidx/lifecycle/h0$c;

.field public static final d:Ls0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/lifecycle/h0$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/h0$c$a;-><init>(Lt9/g;)V

    sput-object v0, Landroidx/lifecycle/h0$c;->b:Landroidx/lifecycle/h0$c$a;

    .line 1
    sget-object v0, Landroidx/lifecycle/h0$c$a$a;->a:Landroidx/lifecycle/h0$c$a$a;

    sput-object v0, Landroidx/lifecycle/h0$c;->d:Ls0/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c()Landroidx/lifecycle/h0$c;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/h0$c;->c:Landroidx/lifecycle/h0$c;

    return-object v0
.end method

.method public static final synthetic d(Landroidx/lifecycle/h0$c;)V
    .registers 1

    .line 1
    sput-object p0, Landroidx/lifecycle/h0$c;->c:Landroidx/lifecycle/h0$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    const-string v1, "modelClass"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{\n                modelC\u2026wInstance()\n            }"

    .line 2
    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/g0;
    :try_end_12
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_12} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_29
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public synthetic b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/h0$b;Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.h0.c.a (androidx.lifecycle.h0$c$a)
.class public final Landroidx/lifecycle/h0$c$a;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$c$a$a;
    }
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

    invoke-direct {p0}, Landroidx/lifecycle/h0$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/h0$c;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/lifecycle/h0$c;->c()Landroidx/lifecycle/h0$c;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Landroidx/lifecycle/h0$c;

    invoke-direct {v0}, Landroidx/lifecycle/h0$c;-><init>()V

    invoke-static {v0}, Landroidx/lifecycle/h0$c;->d(Landroidx/lifecycle/h0$c;)V

    .line 3
    :cond_e
    invoke-static {}, Landroidx/lifecycle/h0$c;->c()Landroidx/lifecycle/h0$c;

    move-result-object v0

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class androidx.lifecycle.h0.c.a.C0057a (androidx.lifecycle.h0$c$a$a)
.class final Landroidx/lifecycle/h0$c$a$a;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"

# interfaces
.implements Ls0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/h0$c$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/h0$c$a$a;

    invoke-direct {v0}, Landroidx/lifecycle/h0$c$a$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/h0$c$a$a;->a:Landroidx/lifecycle/h0$c$a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.h0.d (androidx.lifecycle.h0$d)
.class public Landroidx/lifecycle/h0$d;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/lifecycle/g0;)V
    .registers 3

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
