###### Class androidx.room.MultiInstanceInvalidationService (androidx.room.MultiInstanceInvalidationService)
.class public Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "MultiInstanceInvalidationService.java"


# instance fields
.field o:I

.field final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final q:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroidx/room/k;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroidx/room/l$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationService;->o:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    .line 4
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$a;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$a;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    .line 5
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$b;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$b;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->r:Landroidx/room/l$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->r:Landroidx/room/l$a;

    return-object p1
.end method

###### Class androidx.room.MultiInstanceInvalidationService.a (androidx.room.MultiInstanceInvalidationService$a)
.class Landroidx/room/MultiInstanceInvalidationService$a;
.super Landroid/os/RemoteCallbackList;
.source "MultiInstanceInvalidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroidx/room/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$a;->a:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$a;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/room/k;

    invoke-virtual {p0, p1, p2}, Landroidx/room/MultiInstanceInvalidationService$a;->a(Landroidx/room/k;Ljava/lang/Object;)V

    return-void
.end method

###### Class androidx.room.MultiInstanceInvalidationService.b (androidx.room.MultiInstanceInvalidationService$b)
.class Landroidx/room/MultiInstanceInvalidationService$b;
.super Landroidx/room/l$a;
.source "MultiInstanceInvalidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroidx/room/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public G9(I[Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1e

    const-string p1, "ROOM"

    const-string p2, "Remote invalidation client ID not registered"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1e
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_79

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_70

    .line 6
    :try_start_29
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v4, v4, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    iget-object v5, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v5, v5, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eq p1, v4, :cond_64

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_67

    if-nez v4, :cond_4e

    goto :goto_64

    .line 9
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v4, v4, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    .line 10
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroidx/room/k;

    .line 11
    invoke-interface {v4, p2}, Landroidx/room/k;->Z2([Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5b} :catch_5c
    .catchall {:try_start_4e .. :try_end_5b} :catchall_67

    goto :goto_64

    :catch_5c
    move-exception v4

    :try_start_5d
    const-string v5, "ROOM"

    const-string v6, "Error invoking a remote callback"

    .line 12
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_67

    :cond_64
    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :catchall_67
    move-exception p1

    .line 13
    :try_start_68
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p2, p2, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 14
    throw p1

    .line 15
    :cond_70
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 16
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_79

    goto :goto_7d

    :goto_7c
    throw p1

    :goto_7d
    goto :goto_7c
.end method

.method public h4(Landroidx/room/k;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2
    :try_start_9
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget v3, v2, Landroidx/room/MultiInstanceInvalidationService;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/room/MultiInstanceInvalidationService;->o:I

    .line 3
    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 4
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v1

    return v3

    .line 6
    :cond_2a
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget p2, p1, Landroidx/room/MultiInstanceInvalidationService;->o:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/room/MultiInstanceInvalidationService;->o:I

    .line 7
    monitor-exit v1

    return v0

    :catchall_34
    move-exception p1

    .line 8
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public va(Landroidx/room/k;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->q:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$b;->o:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationService;->p:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p1
.end method
