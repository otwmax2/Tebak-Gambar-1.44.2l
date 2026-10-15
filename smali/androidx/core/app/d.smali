###### Class androidx.core.app.d (androidx.core.app.d)
.class final Landroidx/core/app/d;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/d$d;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/lang/reflect/Field;

.field protected static final c:Ljava/lang/reflect/Field;

.field protected static final d:Ljava/lang/reflect/Method;

.field protected static final e:Ljava/lang/reflect/Method;

.field protected static final f:Ljava/lang/reflect/Method;

.field private static final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/d;->g:Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroidx/core/app/d;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/d;->a:Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroidx/core/app/d;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/d;->b:Ljava/lang/reflect/Field;

    .line 4
    invoke-static {}, Landroidx/core/app/d;->f()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/d;->c:Ljava/lang/reflect/Field;

    .line 5
    invoke-static {v0}, Landroidx/core/app/d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/d;->d:Ljava/lang/reflect/Method;

    .line 6
    invoke-static {v0}, Landroidx/core/app/d;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/d;->e:Ljava/lang/reflect/Method;

    .line 7
    invoke-static {v0}, Landroidx/core/app/d;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/d;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    return-object v0
.end method

.method private static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/core/app/d;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    if-nez p0, :cond_a

    goto :goto_42

    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/util/List;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_42

    return-object p0

    :catchall_42
    :cond_42
    :goto_42
    return-object v1
.end method

.method private static f()Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static g()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected static h(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Landroidx/core/app/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_22

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-eq p0, p1, :cond_10

    goto :goto_22

    .line 3
    :cond_10
    sget-object p0, Landroidx/core/app/d;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    sget-object p1, Landroidx/core/app/d;->g:Landroid/os/Handler;

    new-instance p2, Landroidx/core/app/d$c;

    invoke-direct {p2, p0, v1}, Landroidx/core/app/d$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0

    :catchall_23
    move-exception p0

    const-string p1, "ActivityRecreator"

    const-string p2, "Exception while fetching field values"

    .line 5
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static i(Landroid/app/Activity;)Z
    .registers 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_b

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    .line 3
    :cond_b
    invoke-static {}, Landroidx/core/app/d;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/core/app/d;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_17

    return v2

    .line 4
    :cond_17
    sget-object v0, Landroidx/core/app/d;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    sget-object v0, Landroidx/core/app/d;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    return v2

    .line 5
    :cond_20
    :try_start_20
    sget-object v0, Landroidx/core/app/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    return v2

    .line 6
    :cond_29
    sget-object v3, Landroidx/core/app/d;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    return v2

    .line 7
    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 8
    new-instance v5, Landroidx/core/app/d$d;

    invoke-direct {v5, p0}, Landroidx/core/app/d$d;-><init>(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    sget-object v6, Landroidx/core/app/d;->g:Landroid/os/Handler;

    new-instance v7, Landroidx/core/app/d$a;

    invoke-direct {v7, v5, v0}, Landroidx/core/app/d$a;-><init>(Landroidx/core/app/d$d;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_91

    .line 11
    :try_start_48
    invoke-static {}, Landroidx/core/app/d;->g()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 12
    sget-object p0, Landroidx/core/app/d;->f:Ljava/lang/reflect/Method;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v0, 0x0

    aput-object v0, v7, v1

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    const/4 v8, 0x6

    aput-object v0, v7, v8

    const/4 v0, 0x7

    aput-object v9, v7, v0

    const/16 v0, 0x8

    aput-object v9, v7, v0

    .line 14
    invoke-virtual {p0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 15
    :cond_79
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_7c
    .catchall {:try_start_48 .. :try_end_7c} :catchall_85

    .line 16
    :goto_7c
    :try_start_7c
    new-instance p0, Landroidx/core/app/d$b;

    invoke-direct {p0, v4, v5}, Landroidx/core/app/d$b;-><init>(Landroid/app/Application;Landroidx/core/app/d$d;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :catchall_85
    move-exception p0

    sget-object v0, Landroidx/core/app/d;->g:Landroid/os/Handler;

    new-instance v1, Landroidx/core/app/d$b;

    invoke-direct {v1, v4, v5}, Landroidx/core/app/d$b;-><init>(Landroid/app/Application;Landroidx/core/app/d$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    throw p0
    :try_end_91
    .catchall {:try_start_7c .. :try_end_91} :catchall_91

    :catchall_91
    return v2
.end method

###### Class androidx.core.app.d.a (androidx.core.app.d$a)
.class Landroidx/core/app/d$a;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/d;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/core/app/d$d;

.field final synthetic p:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/app/d$d;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/d$a;->o:Landroidx/core/app/d$d;

    iput-object p2, p0, Landroidx/core/app/d$a;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/d$a;->o:Landroidx/core/app/d$d;

    iget-object v1, p0, Landroidx/core/app/d$a;->p:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/core/app/d$d;->o:Ljava/lang/Object;

    return-void
.end method

###### Class androidx.core.app.d.b (androidx.core.app.d$b)
.class Landroidx/core/app/d$b;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/d;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/app/Application;

.field final synthetic p:Landroidx/core/app/d$d;


# direct methods
.method constructor <init>(Landroid/app/Application;Landroidx/core/app/d$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/d$b;->o:Landroid/app/Application;

    iput-object p2, p0, Landroidx/core/app/d$b;->p:Landroidx/core/app/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/d$b;->o:Landroid/app/Application;

    iget-object v1, p0, Landroidx/core/app/d$b;->p:Landroidx/core/app/d$d;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

###### Class androidx.core.app.d.c (androidx.core.app.d$c)
.class Landroidx/core/app/d$c;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/d;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Object;

.field final synthetic p:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/d$c;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/d$c;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    sget-object v0, Landroidx/core/app/d;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1c

    .line 2
    iget-object v4, p0, Landroidx/core/app/d$c;->o:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/core/app/d$c;->p:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    const-string v1, "AppCompat recreation"

    aput-object v1, v5, v3

    .line 4
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 5
    :cond_1c
    sget-object v0, Landroidx/core/app/d;->e:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroidx/core/app/d$c;->o:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/core/app/d$c;->p:Ljava/lang/Object;

    aput-object v5, v3, v2

    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v3, v1

    .line 7
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2d} :catch_37
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_54

    :catchall_2e
    move-exception v0

    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    :catch_37
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_54

    .line 10
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_54

    .line 12
    :cond_53
    throw v0

    :cond_54
    :goto_54
    return-void
.end method

###### Class androidx.core.app.d.C0024d (androidx.core.app.d$d)
.class final Landroidx/core/app/d$d;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field o:Ljava/lang/Object;

.field private p:Landroid/app/Activity;

.field private final q:I

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/app/d$d;->r:Z

    .line 3
    iput-boolean v0, p0, Landroidx/core/app/d$d;->s:Z

    .line 4
    iput-boolean v0, p0, Landroidx/core/app/d$d;->t:Z

    .line 5
    iput-object p1, p0, Landroidx/core/app/d$d;->p:Landroid/app/Activity;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroidx/core/app/d$d;->q:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/d$d;->p:Landroid/app/Activity;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/app/d$d;->p:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/core/app/d$d;->s:Z

    :cond_a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/d$d;->s:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroidx/core/app/d$d;->t:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroidx/core/app/d$d;->r:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/core/app/d$d;->o:Ljava/lang/Object;

    iget v1, p0, Landroidx/core/app/d$d;->q:I

    .line 2
    invoke-static {v0, v1, p1}, Landroidx/core/app/d;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/core/app/d$d;->t:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/core/app/d$d;->o:Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/d$d;->p:Landroid/app/Activity;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/core/app/d$d;->r:Z

    :cond_7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
