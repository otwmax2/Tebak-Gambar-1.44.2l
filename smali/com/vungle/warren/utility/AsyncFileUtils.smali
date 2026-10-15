###### Class com.vungle.warren.utility.AsyncFileUtils (com.vungle.warren.utility.AsyncFileUtils)
.class public Lcom/vungle/warren/utility/AsyncFileUtils;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;,
        Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;,
        Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/warren/utility/SDKExecutors;

    invoke-direct {v0}, Lcom/vungle/warren/utility/SDKExecutors;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/utility/AsyncFileUtils;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;-><init>(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V

    .line 2
    new-instance p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    invoke-direct {p0, v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;-><init>(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    .line 3
    sget-object p1, Lcom/vungle/warren/utility/AsyncFileUtils;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static setTaskExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/vungle/warren/utility/AsyncFileUtils;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

###### Class com.vungle.warren.utility.AsyncFileUtils.ExistenceOperation (com.vungle.warren.utility.AsyncFileUtils$ExistenceOperation)
.class public Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExistenceOperation"
.end annotation


# instance fields
.field private final a:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->a:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->a:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-static {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->a(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->a:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

###### Class com.vungle.warren.utility.AsyncFileUtils.FileExistCallback (com.vungle.warren.utility.AsyncFileUtils$FileExistCallback)
.class public interface abstract Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileExistCallback"
.end annotation


# virtual methods
.method public abstract status(Z)V
.end method

###### Class com.vungle.warren.utility.AsyncFileUtils.FileExistenceTask (com.vungle.warren.utility.AsyncFileUtils$FileExistenceTask)
.class Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;
.super Landroid/os/AsyncTask;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileExistenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private b:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->b:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->b:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 2
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->a:Ljava/io/File;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_4
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->b:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;->status(Z)V

    .line 5
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->c([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->d(Ljava/lang/Boolean;)V

    return-void
.end method
