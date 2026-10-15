###### Class com.google.android.gms.tasks.n (com.google.android.gms.tasks.n)
.class final Lcom/google/android/gms/tasks/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/Task;

.field final synthetic p:Lcom/google/android/gms/tasks/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/o;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/n;->p:Lcom/google/android/gms/tasks/o;

    iput-object p2, p0, Lcom/google/android/gms/tasks/n;->o:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->p:Lcom/google/android/gms/tasks/o;

    invoke-static {v0}, Lcom/google/android/gms/tasks/o;->d(Lcom/google/android/gms/tasks/o;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->p:Lcom/google/android/gms/tasks/o;

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->b(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->b(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/n;->o:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnFailureListener;->b(Ljava/lang/Exception;)V

    .line 2
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method
