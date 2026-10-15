###### Class com.google.android.gms.tasks.g (com.google.android.gms.tasks.g)
.class final Lcom/google/android/gms/tasks/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/u;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/Continuation;

.field private final c:Lcom/google/android/gms/tasks/z;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/g;->b:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/android/gms/tasks/g;->c:Lcom/google/android/gms/tasks/z;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/Continuation;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/g;->b:Lcom/google/android/gms/tasks/Continuation;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/z;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/g;->c:Lcom/google/android/gms/tasks/z;

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

.method public final c(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/f;-><init>(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
