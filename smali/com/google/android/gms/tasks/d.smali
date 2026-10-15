###### Class com.google.android.gms.tasks.d (com.google.android.gms.tasks.d)
.class final Lcom/google/android/gms/tasks/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Lcom/google/android/gms/tasks/z;

.field private d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private f:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private g:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/d;->a:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tasks/d;->b:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/d;->c:Lcom/google/android/gms/tasks/z;

    return-void
.end method

.method private final a()V
    .registers 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/tasks/d;->d:I

    iget v1, p0, Lcom/google/android/gms/tasks/d;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/tasks/d;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/tasks/d;->b:I

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->g:Ljava/lang/Exception;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->c:Lcom/google/android/gms/tasks/z;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lcom/google/android/gms/tasks/d;->e:I

    iget v3, p0, Lcom/google/android/gms/tasks/d;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tasks/d;->g:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->w(Ljava/lang/Exception;)V

    return-void

    :cond_3a
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/d;->h:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->c:Lcom/google/android/gms/tasks/z;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/z;->y()Z

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->c:Lcom/google/android/gms/tasks/z;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->x(Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/tasks/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/tasks/d;->e:I

    iput-object p1, p0, Lcom/google/android/gms/tasks/d;->g:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/d;->a()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/tasks/d;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/tasks/d;->f:I

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/d;->h:Z

    invoke-direct {p0}, Lcom/google/android/gms/tasks/d;->a()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/tasks/d;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/tasks/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/d;->d:I

    invoke-direct {p0}, Lcom/google/android/gms/tasks/d;->a()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
