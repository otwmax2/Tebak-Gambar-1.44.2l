###### Class com.google.android.gms.tasks.p (com.google.android.gms.tasks.p)
.class final Lcom/google/android/gms/tasks/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/Task;

.field final synthetic p:Lcom/google/android/gms/tasks/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/q;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/p;->p:Lcom/google/android/gms/tasks/q;

    iput-object p2, p0, Lcom/google/android/gms/tasks/p;->o:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/p;->p:Lcom/google/android/gms/tasks/q;

    invoke-static {v0}, Lcom/google/android/gms/tasks/q;->d(Lcom/google/android/gms/tasks/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/p;->p:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->b(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->b(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/p;->o:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 2
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
