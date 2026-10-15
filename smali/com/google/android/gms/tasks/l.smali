###### Class com.google.android.gms.tasks.l (com.google.android.gms.tasks.l)
.class final Lcom/google/android/gms/tasks/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/Task;

.field final synthetic p:Lcom/google/android/gms/tasks/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/m;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/l;->p:Lcom/google/android/gms/tasks/m;

    iput-object p2, p0, Lcom/google/android/gms/tasks/l;->o:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->p:Lcom/google/android/gms/tasks/m;

    invoke-static {v0}, Lcom/google/android/gms/tasks/m;->d(Lcom/google/android/gms/tasks/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/l;->p:Lcom/google/android/gms/tasks/m;

    invoke-static {v1}, Lcom/google/android/gms/tasks/m;->b(Lcom/google/android/gms/tasks/m;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {v1}, Lcom/google/android/gms/tasks/m;->b(Lcom/google/android/gms/tasks/m;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/l;->o:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnCompleteListener;->a(Lcom/google/android/gms/tasks/Task;)V

    .line 2
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
