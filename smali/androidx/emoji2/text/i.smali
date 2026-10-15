###### Class androidx.emoji2.text.i (androidx.emoji2.text.i)
.class public Landroidx/emoji2/text/i;
.super Landroidx/emoji2/text/d$c;
.source "FontRequestEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/i$a;,
        Landroidx/emoji2/text/i$b;
    }
.end annotation


# static fields
.field private static final j:Landroidx/emoji2/text/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/i$a;

    invoke-direct {v0}, Landroidx/emoji2/text/i$a;-><init>()V

    sput-object v0, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/provider/e;)V
    .registers 5

    .line 1
    new-instance v0, Landroidx/emoji2/text/i$b;

    sget-object v1, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i$a;

    invoke-direct {v0, p1, p2, v1}, Landroidx/emoji2/text/i$b;-><init>(Landroid/content/Context;Landroidx/core/provider/e;Landroidx/emoji2/text/i$a;)V

    invoke-direct {p0, v0}, Landroidx/emoji2/text/d$c;-><init>(Landroidx/emoji2/text/d$g;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/i;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/d$c;->a()Landroidx/emoji2/text/d$g;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/i$b;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/i$b;->f(Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

###### Class androidx.emoji2.text.i.a (androidx.emoji2.text.i$a)
.class public Landroidx/emoji2/text/i$a;
.super Ljava/lang/Object;
.source "FontRequestEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/core/provider/g$b;)Landroid/graphics/Typeface;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/provider/g$b;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Landroidx/core/provider/g;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/g$b;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Landroidx/core/provider/e;)Landroidx/core/provider/g$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p2}, Landroidx/core/provider/g;->b(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/e;)Landroidx/core/provider/g$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

###### Class androidx.emoji2.text.i.b (androidx.emoji2.text.i$b)
.class Landroidx/emoji2/text/i$b;
.super Ljava/lang/Object;
.source "FontRequestEmojiCompatConfig.java"

# interfaces
.implements Landroidx/emoji2/text/d$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/core/provider/e;

.field private final c:Landroidx/emoji2/text/i$a;

.field private final d:Ljava/lang/Object;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Ljava/util/concurrent/ThreadPoolExecutor;

.field h:Landroidx/emoji2/text/d$h;

.field private i:Landroid/database/ContentObserver;

.field private j:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/e;Landroidx/emoji2/text/i$a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FontRequest cannot be null"

    .line 4
    invoke-static {p2, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/i$b;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/emoji2/text/i$b;->b:Landroidx/core/provider/e;

    .line 7
    iput-object p3, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/i$a;

    return-void
.end method

.method private b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_4
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    .line 3
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->i:Landroid/database/ContentObserver;

    if-eqz v2, :cond_13

    .line 4
    iget-object v3, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/i$a;

    iget-object v4, p0, Landroidx/emoji2/text/i$b;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroidx/emoji2/text/i$a;->c(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 5
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->i:Landroid/database/ContentObserver;

    .line 6
    :cond_13
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->e:Landroid/os/Handler;

    if-eqz v2, :cond_1c

    .line 7
    iget-object v3, p0, Landroidx/emoji2/text/i$b;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_1c
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->e:Landroid/os/Handler;

    .line 9
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_25

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 11
    :cond_25
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->f:Ljava/util/concurrent/Executor;

    .line 12
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private e()Landroidx/core/provider/g$b;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/i$a;

    iget-object v1, p0, Landroidx/emoji2/text/i$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/text/i$b;->b:Landroidx/core/provider/e;

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/i$a;->b(Landroid/content/Context;Landroidx/core/provider/e;)Landroidx/core/provider/g$a;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_45

    .line 2
    invoke-virtual {v0}, Landroidx/core/provider/g$a;->c()I

    move-result v1

    if-nez v1, :cond_25

    .line 3
    invoke-virtual {v0}, Landroidx/core/provider/g$a;->b()[Landroidx/core/provider/g$b;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 4
    array-length v1, v0

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 5
    aget-object v0, v0, v1

    return-object v0

    .line 6
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchFonts failed (empty result)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchFonts failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/core/provider/g$a;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_45
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "provider not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroidx/emoji2/text/d$h;)V
    .registers 3

    const-string v0, "LoaderCallback cannot be null"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iput-object p1, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    .line 4
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 5
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->d()V

    return-void

    :catchall_f
    move-exception p1

    .line 6
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method c()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    if-nez v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_91

    .line 5
    :try_start_a
    invoke-direct {p0}, Landroidx/emoji2/text/i$b;->e()Landroidx/core/provider/g$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/core/provider/g$b;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 7
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_7e

    .line 8
    :try_start_18
    monitor-exit v2

    goto :goto_1e

    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_7e

    :catchall_1c
    move-exception v0

    goto :goto_1a

    :cond_1e
    :goto_1e
    if-nez v1, :cond_62

    :try_start_20
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 9
    invoke-static {v1}, Landroidx/core/os/m;->a(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/i$a;

    iget-object v2, p0, Landroidx/emoji2/text/i$b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroidx/emoji2/text/i$a;->a(Landroid/content/Context;Landroidx/core/provider/g$b;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->a:Landroid/content/Context;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0}, Landroidx/core/provider/g$b;->d()Landroid/net/Uri;

    move-result-object v0

    .line 13
    invoke-static {v2, v3, v0}, Landroidx/core/graphics/l;->f(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_55

    if-eqz v1, :cond_55

    .line 14
    invoke-static {v1, v0}, Landroidx/emoji2/text/l;->b(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/l;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_5d

    .line 15
    :try_start_40
    invoke-static {}, Landroidx/core/os/m;->b()V

    .line 16
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_7e

    .line 17
    :try_start_46
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    if-eqz v2, :cond_4d

    .line 18
    invoke-virtual {v2, v0}, Landroidx/emoji2/text/d$h;->b(Landroidx/emoji2/text/l;)V

    .line 19
    :cond_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_52

    .line 20
    :try_start_4e
    invoke-direct {p0}, Landroidx/emoji2/text/i$b;->b()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_7e

    goto :goto_8d

    :catchall_52
    move-exception v0

    .line 21
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_7e

    .line 22
    :cond_55
    :try_start_55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    .line 23
    :try_start_5e
    invoke-static {}, Landroidx/core/os/m;->b()V

    .line 24
    throw v0

    .line 25
    :cond_62
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchFonts result is not OK. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v0

    .line 26
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_82
    iget-object v2, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    if-eqz v2, :cond_89

    .line 28
    invoke-virtual {v2, v0}, Landroidx/emoji2/text/d$h;->a(Ljava/lang/Throwable;)V

    .line 29
    :cond_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_8e

    .line 30
    invoke-direct {p0}, Landroidx/emoji2/text/i$b;->b()V

    :goto_8d
    return-void

    :catchall_8e
    move-exception v0

    .line 31
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0

    :catchall_91
    move-exception v1

    .line 32
    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    goto :goto_95

    :goto_94
    throw v1

    :goto_95
    goto :goto_94
.end method

.method d()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->h:Landroidx/emoji2/text/d$h;

    if-nez v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_9
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_17

    const-string v1, "emojiCompat"

    .line 5
    invoke-static {v1}, Landroidx/emoji2/text/b;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iput-object v1, p0, Landroidx/emoji2/text/i$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    iput-object v1, p0, Landroidx/emoji2/text/i$b;->f:Ljava/util/concurrent/Executor;

    .line 7
    :cond_17
    iget-object v1, p0, Landroidx/emoji2/text/i$b;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/emoji2/text/j;

    invoke-direct {v2, p0}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/i$b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public f(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Landroidx/emoji2/text/i$b;->f:Ljava/util/concurrent/Executor;

    .line 3
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

###### Class androidx.emoji2.text.j (androidx.emoji2.text.j)
.class public final synthetic Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/emoji2/text/i$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/i$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/j;->o:Landroidx/emoji2/text/i$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/emoji2/text/j;->o:Landroidx/emoji2/text/i$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/i$b;->c()V

    return-void
.end method
