###### Class androidx.core.app.h (androidx.core.app.h)
.class public abstract Landroidx/core/app/h;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/h$a;,
        Landroidx/core/app/h$d;,
        Landroidx/core/app/h$e;,
        Landroidx/core/app/h$g;,
        Landroidx/core/app/h$f;,
        Landroidx/core/app/h$c;,
        Landroidx/core/app/h$b;,
        Landroidx/core/app/h$h;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final v:Ljava/lang/Object;

.field static final w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/h$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field o:Landroidx/core/app/h$b;

.field p:Landroidx/core/app/h$h;

.field q:Landroidx/core/app/h$a;

.field r:Z

.field s:Z

.field t:Z

.field final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/h;->v:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/h;->w:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/app/h;->r:Z

    .line 3
    iput-boolean v0, p0, Landroidx/core/app/h;->s:Z

    .line 4
    iput-boolean v0, p0, Landroidx/core/app/h;->t:Z

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    goto :goto_1b

    .line 7
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    :goto_1b
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .registers 6

    if-eqz p3, :cond_15

    .line 1
    sget-object v0, Landroidx/core/app/h;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_6
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/h;->f(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/h$h;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2}, Landroidx/core/app/h$h;->b(I)V

    .line 4
    invoke-virtual {p0, p3}, Landroidx/core/app/h$h;->a(Landroid/content/Intent;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0

    .line 6
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/h;->c(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method

.method static f(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/h$h;
    .registers 7

    .line 1
    sget-object v0, Landroidx/core/app/h;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/h$h;

    if-nez v1, :cond_29

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_20

    if-eqz p2, :cond_18

    .line 3
    new-instance p2, Landroidx/core/app/h$g;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/h$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_25

    .line 4
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_20
    new-instance p2, Landroidx/core/app/h$c;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_25
    move-object v1, p2

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-object v1
.end method


# virtual methods
.method a()Landroidx/core/app/h$e;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/h;->o:Landroidx/core/app/h$b;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Landroidx/core/app/h$b;->b()Landroidx/core/app/h$e;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 5
    iget-object v1, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/h$e;

    monitor-exit v0

    return-object v1

    :cond_1f
    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/h;->q:Landroidx/core/app/h$a;

    if-eqz v0, :cond_9

    .line 2
    iget-boolean v1, p0, Landroidx/core/app/h;->r:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_9
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/app/h;->s:Z

    .line 4
    invoke-virtual {p0}, Landroidx/core/app/h;->h()Z

    move-result v0

    return v0
.end method

.method e(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/h;->q:Landroidx/core/app/h$a;

    if-nez v0, :cond_1e

    .line 2
    new-instance v0, Landroidx/core/app/h$a;

    invoke-direct {v0, p0}, Landroidx/core/app/h$a;-><init>(Landroidx/core/app/h;)V

    iput-object v0, p0, Landroidx/core/app/h;->q:Landroidx/core/app/h$a;

    .line 3
    iget-object v0, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 4
    invoke-virtual {v0}, Landroidx/core/app/h$h;->d()V

    .line 5
    :cond_14
    iget-object p1, p0, Landroidx/core/app/h;->q:Landroidx/core/app/h$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1e
    return-void
.end method

.method protected abstract g(Landroid/content/Intent;)V
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method i()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_6
    iput-object v1, p0, Landroidx/core/app/h;->q:Landroidx/core/app/h$a;

    .line 4
    iget-object v1, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/core/app/h;->e(Z)V

    goto :goto_20

    .line 6
    :cond_17
    iget-boolean v1, p0, Landroidx/core/app/h;->t:Z

    if-nez v1, :cond_20

    .line 7
    iget-object v1, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    invoke-virtual {v1}, Landroidx/core/app/h$h;->c()V

    .line 8
    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/core/app/h;->o:Landroidx/core/app/h$b;

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {p1}, Landroidx/core/app/h$b;->a()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_14

    .line 3
    new-instance v0, Landroidx/core/app/h$f;

    invoke-direct {v0, p0}, Landroidx/core/app/h$f;-><init>(Landroidx/core/app/h;)V

    iput-object v0, p0, Landroidx/core/app/h;->o:Landroidx/core/app/h$b;

    .line 4
    iput-object v1, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    goto :goto_26

    .line 5
    :cond_14
    iput-object v1, p0, Landroidx/core/app/h;->o:Landroidx/core/app/h$b;

    .line 6
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/h;->f(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/h$h;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    :goto_26
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 3
    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_9
    iput-boolean v1, p0, Landroidx/core/app/h;->t:Z

    .line 5
    iget-object v1, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    invoke-virtual {v1}, Landroidx/core/app/h$h;->c()V

    .line 6
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 1
    iget-object p2, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    if-eqz p2, :cond_28

    .line 2
    iget-object p2, p0, Landroidx/core/app/h;->p:Landroidx/core/app/h$h;

    invoke-virtual {p2}, Landroidx/core/app/h$h;->e()V

    .line 3
    iget-object p2, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    monitor-enter p2

    .line 4
    :try_start_c
    iget-object v0, p0, Landroidx/core/app/h;->u:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/h$d;

    if-eqz p1, :cond_13

    goto :goto_18

    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/h$d;-><init>(Landroidx/core/app/h;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/core/app/h;->e(Z)V

    .line 6
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    const/4 p1, 0x2

    return p1
.end method

###### Class androidx.core.app.h.a (androidx.core.app.h$a)
.class final Landroidx/core/app/h$a;
.super Landroid/os/AsyncTask;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/app/h;


# direct methods
.method constructor <init>(Landroidx/core/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/app/h$a;->a:Landroidx/core/app/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 1
    :goto_0
    iget-object p1, p0, Landroidx/core/app/h$a;->a:Landroidx/core/app/h;

    invoke-virtual {p1}, Landroidx/core/app/h;->a()Landroidx/core/app/h$e;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2
    iget-object v0, p0, Landroidx/core/app/h$a;->a:Landroidx/core/app/h;

    invoke-interface {p1}, Landroidx/core/app/h$e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h;->g(Landroid/content/Intent;)V

    .line 3
    invoke-interface {p1}, Landroidx/core/app/h$e;->a()V

    goto :goto_0

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/core/app/h$a;->a:Landroidx/core/app/h;

    invoke-virtual {p1}, Landroidx/core/app/h;->i()V

    return-void
.end method

.method protected c(Ljava/lang/Void;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/core/app/h$a;->a:Landroidx/core/app/h;

    invoke-virtual {p1}, Landroidx/core/app/h;->i()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/h$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/h$a;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/h$a;->c(Ljava/lang/Void;)V

    return-void
.end method

###### Class androidx.core.app.h.b (androidx.core.app.h$b)
.class interface abstract Landroidx/core/app/h$b;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()Landroid/os/IBinder;
.end method

.method public abstract b()Landroidx/core/app/h$e;
.end method

###### Class androidx.core.app.h.c (androidx.core.app.h$c)
.class final Landroidx/core/app/h$c;
.super Landroidx/core/app/h$h;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/PowerManager$WakeLock;

.field private final f:Landroid/os/PowerManager$WakeLock;

.field g:Z

.field h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Landroidx/core/app/h$h;-><init>(Landroid/content/ComponentName;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$c;->d:Landroid/content/Context;

    const-string v0, "power"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$c;->e:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":run"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$c;->f:Landroid/os/PowerManager$WakeLock;

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Landroidx/core/app/h$h;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Landroidx/core/app/h$c;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 4
    monitor-enter p0

    .line 5
    :try_start_13
    iget-boolean p1, p0, Landroidx/core/app/h$c;->g:Z

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/core/app/h$c;->g:Z

    .line 7
    iget-boolean p1, p0, Landroidx/core/app/h$c;->h:Z

    if-nez p1, :cond_26

    .line 8
    iget-object p1, p0, Landroidx/core/app/h$c;->e:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 9
    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    :goto_2b
    return-void
.end method

.method public c()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/h$c;->h:Z

    if-eqz v0, :cond_19

    .line 3
    iget-boolean v0, p0, Landroidx/core/app/h$c;->g:Z

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, p0, Landroidx/core/app/h$c;->e:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_11
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/h$c;->h:Z

    .line 6
    iget-object v0, p0, Landroidx/core/app/h$c;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public d()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/h$c;->h:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/app/h$c;->h:Z

    .line 4
    iget-object v0, p0, Landroidx/core/app/h$c;->f:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5
    iget-object v0, p0, Landroidx/core/app/h$c;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public e()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Landroidx/core/app/h$c;->g:Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

###### Class androidx.core.app.h.d (androidx.core.app.h$d)
.class final Landroidx/core/app/h$d;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:I

.field final synthetic c:Landroidx/core/app/h;


# direct methods
.method constructor <init>(Landroidx/core/app/h;Landroid/content/Intent;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/core/app/h$d;->c:Landroidx/core/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/core/app/h$d;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Landroidx/core/app/h$d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$d;->c:Landroidx/core/app/h;

    iget v1, p0, Landroidx/core/app/h$d;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroid/content/Intent;

    return-object v0
.end method

###### Class androidx.core.app.h.e (androidx.core.app.h$e)
.class interface abstract Landroidx/core/app/h$e;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

###### Class androidx.core.app.h.f (androidx.core.app.h$f)
.class final Landroidx/core/app/h$f;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/h$f$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/core/app/h;

.field final b:Ljava/lang/Object;

.field c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Landroidx/core/app/h;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$f;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/core/app/h$f;->a:Landroidx/core/app/h;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/app/h$e;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/core/app/h$f;->c:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_a
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 5
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_25

    if-eqz v1, :cond_24

    .line 6
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/h$f;->a:Landroidx/core/app/h;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 7
    new-instance v0, Landroidx/core/app/h$f$a;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/h$f$a;-><init>(Landroidx/core/app/h$f;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_24
    return-object v2

    :catchall_25
    move-exception v1

    .line 8
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/h$f;->c:Landroid/app/job/JobParameters;

    .line 2
    iget-object p1, p0, Landroidx/core/app/h$f;->a:Landroidx/core/app/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/h;->e(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/core/app/h$f;->a:Landroidx/core/app/h;

    invoke-virtual {p1}, Landroidx/core/app/h;->b()Z

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/core/app/h$f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_a
    iput-object v1, p0, Landroidx/core/app/h$f;->c:Landroid/app/job/JobParameters;

    .line 4
    monitor-exit v0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class androidx.core.app.h.f.a (androidx.core.app.h$f$a)
.class final Landroidx/core/app/h$f$a;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/h$f;


# direct methods
.method constructor <init>(Landroidx/core/app/h$f;Landroid/app/job/JobWorkItem;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/h$f$a;->b:Landroidx/core/app/h$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/core/app/h$f$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$f$a;->b:Landroidx/core/app/h$f;

    iget-object v0, v0, Landroidx/core/app/h$f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Landroidx/core/app/h$f$a;->b:Landroidx/core/app/h$f;

    iget-object v1, v1, Landroidx/core/app/h$f;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_10

    .line 3
    iget-object v2, p0, Landroidx/core/app/h$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 4
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.h.g (androidx.core.app.h$g)
.class final Landroidx/core/app/h$g;
.super Landroidx/core/app/h$h;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final d:Landroid/app/job/JobInfo;

.field private final e:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Landroidx/core/app/h$h;-><init>(Landroid/content/ComponentName;)V

    .line 2
    invoke-virtual {p0, p3}, Landroidx/core/app/h$h;->b(I)V

    .line 3
    new-instance p2, Landroid/app/job/JobInfo$Builder;

    iget-object v0, p0, Landroidx/core/app/h$h;->a:Landroid/content/ComponentName;

    invoke-direct {p2, p3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/core/app/h$g;->d:Landroid/app/job/JobInfo;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Landroidx/core/app/h$g;->e:Landroid/app/job/JobScheduler;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/app/h$g;->e:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Landroidx/core/app/h$g;->d:Landroid/app/job/JobInfo;

    new-instance v2, Landroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    return-void
.end method

###### Class androidx.core.app.h.AbstractC0025h (androidx.core.app.h$h)
.class abstract Landroidx/core/app/h$h;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation


# instance fields
.field final a:Landroid/content/ComponentName;

.field b:Z

.field c:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/app/h$h;->a:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method abstract a(Landroid/content/Intent;)V
.end method

.method b(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/h$h;->b:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/app/h$h;->b:Z

    .line 3
    iput p1, p0, Landroidx/core/app/h$h;->c:I

    goto :goto_e

    .line 4
    :cond_a
    iget v0, p0, Landroidx/core/app/h$h;->c:I

    if-ne v0, p1, :cond_f

    :goto_e
    return-void

    .line 5
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different than previous "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/core/app/h$h;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method
