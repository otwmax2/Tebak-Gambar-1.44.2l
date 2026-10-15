###### Class com.google.android.material.snackbar.e (com.google.android.material.snackbar.e)
.class Lcom/google/android/material/snackbar/e;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/e$c;,
        Lcom/google/android/material/snackbar/e$b;
    }
.end annotation


# static fields
.field private static e:Lcom/google/android/material/snackbar/e;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/google/android/material/snackbar/e$c;

.field private d:Lcom/google/android/material/snackbar/e$c;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/e$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/e$a;-><init>(Lcom/google/android/material/snackbar/e;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/google/android/material/snackbar/e$c;I)Z
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/google/android/material/snackbar/e$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/e$b;

    if-eqz v0, :cond_14

    .line 2
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/e$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static b()Lcom/google/android/material/snackbar/e;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/e;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/e;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;

    .line 3
    :cond_b
    sget-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;

    return-object v0
.end method

.method private d(Lcom/google/android/material/snackbar/e$b;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/e$c;->a(Lcom/google/android/material/snackbar/e$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private g(Lcom/google/android/material/snackbar/e$c;)V
    .registers 6

    .line 1
    iget v0, p1, Lcom/google/android/material/snackbar/e$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/16 v1, 0xabe

    if-lez v0, :cond_b

    goto :goto_13

    :cond_b
    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/16 v0, 0x5dc

    goto :goto_13

    :cond_11
    const/16 v0, 0xabe

    .line 2
    :goto_13
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method c(Lcom/google/android/material/snackbar/e$c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;

    if-eq v1, p1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->d:Lcom/google/android/material/snackbar/e$c;

    if-ne v1, p1, :cond_f

    :cond_b
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/e;->a(Lcom/google/android/material/snackbar/e$c;I)Z

    .line 4
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public e(Lcom/google/android/material/snackbar/e$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/e;->d(Lcom/google/android/material/snackbar/e$b;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public f(Lcom/google/android/material/snackbar/e$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/e;->d(Lcom/google/android/material/snackbar/e$b;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/e;->g(Lcom/google/android/material/snackbar/e$c;)V

    .line 5
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

###### Class com.google.android.material.snackbar.e.a (com.google.android.material.snackbar.e$a)
.class Lcom/google/android/material/snackbar/e$a;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/material/snackbar/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/e$a;->o:Lcom/google/android/material/snackbar/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/snackbar/e$a;->o:Lcom/google/android/material/snackbar/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/e$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/e;->c(Lcom/google/android/material/snackbar/e$c;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.material.snackbar.e.b (com.google.android.material.snackbar.e$b)
.class interface abstract Lcom/google/android/material/snackbar/e$b;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

###### Class com.google.android.material.snackbar.e.c (com.google.android.material.snackbar.e$c)
.class Lcom/google/android/material/snackbar/e$c;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/e$b;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z


# virtual methods
.method a(Lcom/google/android/material/snackbar/e$b;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
