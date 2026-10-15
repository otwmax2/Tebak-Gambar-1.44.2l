###### Class com.google.android.gms.tasks.h (com.google.android.gms.tasks.h)
.class final Lcom/google/android/gms/tasks/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/Task;

.field final synthetic p:Lcom/google/android/gms/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    iput-object p2, p0, Lcom/google/android/gms/tasks/h;->o:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    invoke-static {v0}, Lcom/google/android/gms/tasks/i;->e(Lcom/google/android/gms/tasks/i;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/h;->o:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_e
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_e} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_2f

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_1d
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->j(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_2f
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    invoke-static {v1}, Lcom/google/android/gms/tasks/i;->f(Lcom/google/android/gms/tasks/i;)Lcom/google/android/gms/tasks/z;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/z;->w(Ljava/lang/Exception;)V

    return-void

    :catch_3a
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    invoke-static {v1}, Lcom/google/android/gms/tasks/i;->f(Lcom/google/android/gms/tasks/i;)Lcom/google/android/gms/tasks/z;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/z;->w(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/tasks/h;->p:Lcom/google/android/gms/tasks/i;

    invoke-static {v1}, Lcom/google/android/gms/tasks/i;->f(Lcom/google/android/gms/tasks/i;)Lcom/google/android/gms/tasks/z;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/z;->w(Ljava/lang/Exception;)V

    return-void
.end method
