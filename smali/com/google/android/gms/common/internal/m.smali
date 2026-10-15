###### Class com.google.android.gms.common.internal.m (com.google.android.gms.common.internal.m)
.class final Lcom/google/android/gms/common/internal/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/internal/n;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/n;Lcom/google/android/gms/common/internal/zzp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6a

    if-eq v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->k(Lcom/google/android/gms/common/internal/n;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/n;->k(Lcom/google/android/gms/common/internal/n;)Ljava/util/HashMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/l;

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_65

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v5, "GmsClientSupervisor"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l;->b()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_52

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->b()Landroid/content/ComponentName;

    move-result-object v3

    :cond_52
    if-nez v3, :cond_62

    new-instance v3, Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_62
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/l;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 9
    :cond_65
    monitor-exit v0

    return v1

    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_10 .. :try_end_69} :catchall_67

    throw p1

    .line 10
    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->k(Lcom/google/android/gms/common/internal/n;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 11
    :try_start_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/n;->k(Lcom/google/android/gms/common/internal/n;)Ljava/util/HashMap;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/l;

    if-eqz v2, :cond_9d

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l;->i()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l;->j()Z

    move-result v3

    if-eqz v3, :cond_94

    const-string v3, "GmsClientSupervisor"

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/l;->g(Ljava/lang/String;)V

    :cond_94
    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->o:Lcom/google/android/gms/common/internal/n;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/n;->k(Lcom/google/android/gms/common/internal/n;)Ljava/util/HashMap;

    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_9d
    monitor-exit v0

    return v1

    :catchall_9f
    move-exception p1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_71 .. :try_end_a1} :catchall_9f

    throw p1
.end method
