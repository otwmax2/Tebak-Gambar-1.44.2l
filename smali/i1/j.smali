###### Class i1.j (i1.j)
.class public abstract Li1/j;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/j$a;
    }
.end annotation


# static fields
.field private static a:Li1/j; = null

.field private static final b:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Li1/j;
    .registers 3

    const-class v0, Li1/j;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Li1/j;->a:Li1/j;

    if-nez v1, :cond_f

    .line 2
    new-instance v1, Li1/j$a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Li1/j$a;-><init>(I)V

    sput-object v1, Li1/j;->a:Li1/j;

    .line 3
    :cond_f
    sget-object v1, Li1/j;->a:Li1/j;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e(Li1/j;)V
    .registers 2

    const-class v0, Li1/j;

    monitor-enter v0

    .line 1
    :try_start_3
    sput-object p0, Li1/j;->a:Li1/j;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 2
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget v2, Li1/j;->b:I

    if-lt v0, v2, :cond_1d

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 6
    :cond_1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs abstract a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

###### Class i1.j.a (i1.j$a)
.class public Li1/j$a;
.super Li1/j;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Li1/j;-><init>(I)V

    .line 2
    iput p1, p0, Li1/j$a;->c:I

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Li1/j$a;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 2
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 3
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Li1/j$a;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 2
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 3
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Li1/j$a;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 2
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 3
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Li1/j$a;->c:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 2
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 3
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Li1/j$a;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 2
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 3
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method
