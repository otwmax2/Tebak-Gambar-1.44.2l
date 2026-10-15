###### Class c9.a (c9.a)
.class public Lc9/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/a$a;,
        Lc9/a$b;
    }
.end annotation


# instance fields
.field private final a:Lc9/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 3
    new-instance v0, Lc9/a$a;

    invoke-direct {v0, p1}, Lc9/a$a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lc9/a;->a:Lc9/a$a;

    return-void
.end method


# virtual methods
.method public a(Lc9/a$b;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a;->a:Lc9/a$a;

    if-eqz v0, :cond_c

    .line 2
    invoke-static {v0, p1}, Lc9/a$a;->a(Lc9/a$a;Lc9/a$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

###### Class c9.a.C0097a (c9.a$a)
.class Lc9/a$a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc9/a$a;->a:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lc9/a$a;->b:Landroid/app/Application;

    return-void
.end method

.method static synthetic a(Lc9/a$a;Lc9/a$b;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lc9/a$a;->b(Lc9/a$b;)Z

    move-result p0

    return p0
.end method

.method private b(Lc9/a$b;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a;->b:Landroid/app/Application;

    if-eqz v0, :cond_15

    .line 2
    new-instance v0, Lc9/a$a$a;

    invoke-direct {v0, p0, p1}, Lc9/a$a$a;-><init>(Lc9/a$a;Lc9/a$b;)V

    .line 3
    iget-object p1, p0, Lc9/a$a;->b:Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    iget-object p1, p0, Lc9/a$a;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

###### Class c9.a.C0097a.C0098a (c9.a$a$a)
.class Lc9/a$a$a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc9/a$a;->b(Lc9/a$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lc9/a$b;

.field final synthetic p:Lc9/a$a;


# direct methods
.method constructor <init>(Lc9/a$a;Lc9/a$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc9/a$a$a;->p:Lc9/a$a;

    iput-object p2, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1, p2}, Lc9/a$b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1}, Lc9/a$b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1}, Lc9/a$b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1}, Lc9/a$b;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1, p2}, Lc9/a$b;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1}, Lc9/a$b;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc9/a$a$a;->o:Lc9/a$b;

    invoke-virtual {v0, p1}, Lc9/a$b;->g(Landroid/app/Activity;)V

    return-void
.end method

###### Class c9.a.b (c9.a$b)
.class public abstract Lc9/a$b;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public abstract f(Landroid/app/Activity;)V
.end method

.method public g(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
