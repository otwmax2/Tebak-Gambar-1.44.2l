###### Class androidx.room.p (androidx.room.p)
.class Landroidx/room/p;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field c:I

.field final d:Landroidx/room/o;

.field final e:Landroidx/room/o$c;

.field f:Landroidx/room/l;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Landroidx/room/k;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Landroid/content/ServiceConnection;

.field final k:Ljava/lang/Runnable;

.field final l:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/o;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/room/p$a;

    invoke-direct {v0, p0}, Landroidx/room/p$a;-><init>(Landroidx/room/p;)V

    iput-object v0, p0, Landroidx/room/p;->h:Landroidx/room/k;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroidx/room/p$b;

    invoke-direct {v0, p0}, Landroidx/room/p$b;-><init>(Landroidx/room/p;)V

    iput-object v0, p0, Landroidx/room/p;->j:Landroid/content/ServiceConnection;

    .line 5
    new-instance v2, Landroidx/room/p$c;

    invoke-direct {v2, p0}, Landroidx/room/p$c;-><init>(Landroidx/room/p;)V

    iput-object v2, p0, Landroidx/room/p;->k:Ljava/lang/Runnable;

    .line 6
    new-instance v2, Landroidx/room/p$d;

    invoke-direct {v2, p0}, Landroidx/room/p$d;-><init>(Landroidx/room/p;)V

    iput-object v2, p0, Landroidx/room/p;->l:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/p;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Landroidx/room/p;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Landroidx/room/p;->d:Landroidx/room/o;

    .line 10
    iput-object p4, p0, Landroidx/room/p;->g:Ljava/util/concurrent/Executor;

    .line 11
    iget-object p2, p3, Landroidx/room/o;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 12
    new-instance p3, Landroidx/room/p$e;

    new-array p4, v1, [Ljava/lang/String;

    invoke-interface {p2, p4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p3, p0, p2}, Landroidx/room/p$e;-><init>(Landroidx/room/p;[Ljava/lang/String;)V

    iput-object p3, p0, Landroidx/room/p;->e:Landroidx/room/o$c;

    .line 13
    new-instance p2, Landroid/content/Intent;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

###### Class androidx.room.p.a (androidx.room.p$a)
.class Landroidx/room/p$a;
.super Landroidx/room/k$a;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/p;


# direct methods
.method constructor <init>(Landroidx/room/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/p$a;->o:Landroidx/room/p;

    invoke-direct {p0}, Landroidx/room/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public Z2([Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/p$a;->o:Landroidx/room/p;

    iget-object v0, v0, Landroidx/room/p;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/p$a$a;

    invoke-direct {v1, p0, p1}, Landroidx/room/p$a$a;-><init>(Landroidx/room/p$a;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class androidx.room.p.a.RunnableC0068a (androidx.room.p$a$a)
.class Landroidx/room/p$a$a;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/p$a;->Z2([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:[Ljava/lang/String;

.field final synthetic p:Landroidx/room/p$a;


# direct methods
.method constructor <init>(Landroidx/room/p$a;[Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/room/p$a$a;->p:Landroidx/room/p$a;

    iput-object p2, p0, Landroidx/room/p$a$a;->o:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/p$a$a;->p:Landroidx/room/p$a;

    iget-object v0, v0, Landroidx/room/p$a;->o:Landroidx/room/p;

    iget-object v0, v0, Landroidx/room/p;->d:Landroidx/room/o;

    iget-object v1, p0, Landroidx/room/p$a$a;->o:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/room/o;->f([Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.room.p.b (androidx.room.p$b)
.class Landroidx/room/p$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/p;


# direct methods
.method constructor <init>(Landroidx/room/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/p$b;->o:Landroidx/room/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/room/p$b;->o:Landroidx/room/p;

    invoke-static {p2}, Landroidx/room/l$a;->P0(Landroid/os/IBinder;)Landroidx/room/l;

    move-result-object p2

    iput-object p2, p1, Landroidx/room/p;->f:Landroidx/room/l;

    .line 2
    iget-object p1, p0, Landroidx/room/p$b;->o:Landroidx/room/p;

    iget-object p2, p1, Landroidx/room/p;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/p;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/room/p$b;->o:Landroidx/room/p;

    iget-object v0, p1, Landroidx/room/p;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/p;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/p$b;->o:Landroidx/room/p;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/room/p;->f:Landroidx/room/l;

    return-void
.end method

###### Class androidx.room.p.c (androidx.room.p$c)
.class Landroidx/room/p$c;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/p;


# direct methods
.method constructor <init>(Landroidx/room/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/p$c;->o:Landroidx/room/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/p$c;->o:Landroidx/room/p;

    iget-object v1, v0, Landroidx/room/p;->f:Landroidx/room/l;

    if-eqz v1, :cond_22

    .line 2
    iget-object v2, v0, Landroidx/room/p;->h:Landroidx/room/k;

    iget-object v3, v0, Landroidx/room/p;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/room/l;->h4(Landroidx/room/k;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/room/p;->c:I

    .line 3
    iget-object v0, p0, Landroidx/room/p$c;->o:Landroidx/room/p;

    iget-object v1, v0, Landroidx/room/p;->d:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/p;->e:Landroidx/room/o$c;

    invoke-virtual {v1, v0}, Landroidx/room/o;->a(Landroidx/room/o$c;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

###### Class androidx.room.p.d (androidx.room.p$d)
.class Landroidx/room/p$d;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/p;


# direct methods
.method constructor <init>(Landroidx/room/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/p$d;->o:Landroidx/room/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/p$d;->o:Landroidx/room/p;

    iget-object v1, v0, Landroidx/room/p;->d:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/p;->e:Landroidx/room/o$c;

    invoke-virtual {v1, v0}, Landroidx/room/o;->i(Landroidx/room/o$c;)V

    return-void
.end method

###### Class androidx.room.p.e (androidx.room.p$e)
.class Landroidx/room/p$e;
.super Landroidx/room/o$c;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/o;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/room/p;


# direct methods
.method constructor <init>(Landroidx/room/p;[Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/room/p$e;->b:Landroidx/room/p;

    invoke-direct {p0, p2}, Landroidx/room/o$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/p$e;->b:Landroidx/room/p;

    iget-object v0, v0, Landroidx/room/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroidx/room/p$e;->b:Landroidx/room/p;

    iget-object v1, v0, Landroidx/room/p;->f:Landroidx/room/l;

    if-eqz v1, :cond_28

    .line 3
    iget v0, v0, Landroidx/room/p;->c:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroidx/room/l;->G9(I[Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p1

    const-string v0, "ROOM"

    const-string v1, "Cannot broadcast invalidation"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void
.end method
