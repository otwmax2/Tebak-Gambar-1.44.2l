###### Class ia.b (ia.b)
.class public final Lia/b;
.super Ljava/lang/Object;
.source "Tasks.kt"


# direct methods
.method public static final a(Lcom/google/android/gms/tasks/Task;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lia/b;->b(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationTokenSource;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_33

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result p1

    if-nez p1, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_17
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled normally."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_33
    throw p1

    .line 7
    :cond_34
    new-instance v0, Lda/n;

    invoke-static {p2}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lda/n;-><init>(Lk9/d;I)V

    .line 8
    invoke-virtual {v0}, Lda/n;->y()V

    .line 9
    sget-object v1, Lia/a;->o:Lia/a;

    new-instance v2, Lia/b$a;

    invoke-direct {v2, v0}, Lia/b$a;-><init>(Lda/m;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    if-eqz p1, :cond_55

    .line 10
    new-instance p0, Lia/b$b;

    invoke-direct {p0, p1}, Lia/b$b;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    invoke-interface {v0, p0}, Lda/m;->z(Ls9/l;)V

    .line 11
    :cond_55
    invoke-virtual {v0}, Lda/n;->t()Ljava/lang/Object;

    move-result-object p0

    .line 12
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_62

    invoke-static {p2}, Lm9/h;->c(Lk9/d;)V

    :cond_62
    return-object p0
.end method

###### Class ia.b.a (ia.b$a)
.class final Lia/b$a;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lia/b;->b(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lda/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/m<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lia/b$a;->a:Lda/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_24

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lia/b$a;->a:Lda/m;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lda/m$a;->a(Lda/m;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_33

    :cond_14
    iget-object v0, p0, Lia/b$a;->a:Lda/m;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    goto :goto_33

    .line 3
    :cond_24
    iget-object p1, p0, Lia/b$a;->a:Lda/m;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lk9/d;->g(Ljava/lang/Object;)V

    :goto_33
    return-void
.end method

###### Class ia.b.C0178b (ia.b$b)
.class final Lia/b$b;
.super Lt9/n;
.source "Tasks.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lia/b;->b(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .registers 2

    iput-object p1, p0, Lia/b$b;->o:Lcom/google/android/gms/tasks/CancellationTokenSource;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lia/b$b;->o:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lia/b$b;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
