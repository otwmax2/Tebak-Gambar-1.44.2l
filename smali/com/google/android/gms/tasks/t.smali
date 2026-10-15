###### Class com.google.android.gms.tasks.t (com.google.android.gms.tasks.t)
.class final Lcom/google/android/gms/tasks/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnCanceledListener;
.implements Lcom/google/android/gms/tasks/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnCanceledListener;",
        "Lcom/google/android/gms/tasks/u;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/SuccessContinuation;

.field private final c:Lcom/google/android/gms/tasks/z;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/t;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/SuccessContinuation;

    iput-object p3, p0, Lcom/google/android/gms/tasks/t;->c:Lcom/google/android/gms/tasks/z;

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/tasks/t;)Lcom/google/android/gms/tasks/SuccessContinuation;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/SuccessContinuation;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->c:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/z;->w(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/s;-><init>(Lcom/google/android/gms/tasks/t;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->c:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/z;->y()Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->c:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/z;->x(Ljava/lang/Object;)V

    return-void
.end method
