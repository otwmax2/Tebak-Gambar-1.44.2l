###### Class com.google.android.gms.tasks.s (com.google.android.gms.tasks.s)
.class final Lcom/google/android/gms/tasks/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/Task;

.field final synthetic p:Lcom/google/android/gms/tasks/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/t;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    iput-object p2, p0, Lcom/google/android/gms/tasks/s;->o:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    invoke-static {v0}, Lcom/google/android/gms/tasks/t;->e(Lcom/google/android/gms/tasks/t;)Lcom/google/android/gms/tasks/SuccessContinuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->o:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_10
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_10} :catch_3e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_10} :catch_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_31

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/t;->b(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_1f
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->j(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_31
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/t;->b(Ljava/lang/Exception;)V

    return-void

    .line 8
    :catch_38
    iget-object v0, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/t;->d()V

    return-void

    :catch_3e
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/t;->b(Ljava/lang/Exception;)V

    return-void

    .line 12
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->p:Lcom/google/android/gms/tasks/t;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/t;->b(Ljava/lang/Exception;)V

    return-void
.end method
