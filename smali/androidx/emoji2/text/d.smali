###### Class androidx.emoji2.text.d (androidx.emoji2.text.d)
.class public Landroidx/emoji2/text/d;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/d$a;,
        Landroidx/emoji2/text/d$b;,
        Landroidx/emoji2/text/d$f;,
        Landroidx/emoji2/text/d$c;,
        Landroidx/emoji2/text/d$h;,
        Landroidx/emoji2/text/d$d;,
        Landroidx/emoji2/text/d$g;,
        Landroidx/emoji2/text/d$e;,
        Landroidx/emoji2/text/d$i;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Object;

.field private static volatile p:Landroidx/emoji2/text/d;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:I

.field private final d:Landroid/os/Handler;

.field private final e:Landroidx/emoji2/text/d$b;

.field final f:Landroidx/emoji2/text/d$g;

.field final g:Z

.field final h:Z

.field final i:[I

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Landroidx/emoji2/text/d$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/d;->n:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/d;->o:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/emoji2/text/d$c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Landroidx/emoji2/text/d;->c:I

    .line 4
    iget-boolean v0, p1, Landroidx/emoji2/text/d$c;->b:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/d;->g:Z

    .line 5
    iget-boolean v0, p1, Landroidx/emoji2/text/d$c;->c:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/d;->h:Z

    .line 6
    iget-object v0, p1, Landroidx/emoji2/text/d$c;->d:[I

    iput-object v0, p0, Landroidx/emoji2/text/d;->i:[I

    .line 7
    iget-boolean v0, p1, Landroidx/emoji2/text/d$c;->f:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/d;->j:Z

    .line 8
    iget v0, p1, Landroidx/emoji2/text/d$c;->g:I

    iput v0, p0, Landroidx/emoji2/text/d;->k:I

    .line 9
    iget-object v0, p1, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    iput-object v0, p0, Landroidx/emoji2/text/d;->f:Landroidx/emoji2/text/d$g;

    .line 10
    iget v0, p1, Landroidx/emoji2/text/d$c;->h:I

    iput v0, p0, Landroidx/emoji2/text/d;->l:I

    .line 11
    iget-object v0, p1, Landroidx/emoji2/text/d$c;->i:Landroidx/emoji2/text/d$d;

    iput-object v0, p0, Landroidx/emoji2/text/d;->m:Landroidx/emoji2/text/d$d;

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji2/text/d;->d:Landroid/os/Handler;

    .line 13
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    .line 14
    iget-object v1, p1, Landroidx/emoji2/text/d$c;->e:Ljava/util/Set;

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 15
    iget-object p1, p1, Landroidx/emoji2/text/d$c;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_4e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_5a

    new-instance p1, Landroidx/emoji2/text/d$b;

    invoke-direct {p1, p0}, Landroidx/emoji2/text/d$b;-><init>(Landroidx/emoji2/text/d;)V

    goto :goto_5f

    :cond_5a
    new-instance p1, Landroidx/emoji2/text/d$a;

    invoke-direct {p1, p0}, Landroidx/emoji2/text/d$a;-><init>(Landroidx/emoji2/text/d;)V

    :goto_5f
    iput-object p1, p0, Landroidx/emoji2/text/d;->e:Landroidx/emoji2/text/d$b;

    .line 17
    invoke-direct {p0}, Landroidx/emoji2/text/d;->l()V

    return-void
.end method

.method static synthetic a(Landroidx/emoji2/text/d;)Landroidx/emoji2/text/d$d;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/emoji2/text/d;->m:Landroidx/emoji2/text/d$d;

    return-object p0
.end method

.method public static b()Landroidx/emoji2/text/d;
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Landroidx/emoji2/text/d;->p:Landroidx/emoji2/text/d;

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 3
    invoke-static {v2, v3}, Landroidx/core/util/h;->h(ZLjava/lang/String;)V

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static e(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/g;->c(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/g;->d(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroidx/emoji2/text/d$c;)Landroidx/emoji2/text/d;
    .registers 3

    .line 1
    sget-object v0, Landroidx/emoji2/text/d;->p:Landroidx/emoji2/text/d;

    if-nez v0, :cond_17

    .line 2
    sget-object v1, Landroidx/emoji2/text/d;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_7
    sget-object v0, Landroidx/emoji2/text/d;->p:Landroidx/emoji2/text/d;

    if-nez v0, :cond_12

    .line 4
    new-instance v0, Landroidx/emoji2/text/d;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/d;-><init>(Landroidx/emoji2/text/d$c;)V

    .line 5
    sput-object v0, Landroidx/emoji2/text/d;->p:Landroidx/emoji2/text/d;

    .line 6
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static h()Z
    .registers 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/d;->p:Landroidx/emoji2/text/d;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private j()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/d;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private l()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/d;->l:I

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/emoji2/text/d;->c:I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_25

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    invoke-virtual {p0}, Landroidx/emoji2/text/d;->d()I

    move-result v0

    if-nez v0, :cond_24

    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/d;->e:Landroidx/emoji2/text/d$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/d$b;->a()V

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v0
.end method


# virtual methods
.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/emoji2/text/d;->k:I

    return v0
.end method

.method public d()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/d;->c:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_15
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/emoji2/text/d;->j:Z

    return v0
.end method

.method public k()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/emoji2/text/d;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-static {v2, v0}, Landroidx/core/util/h;->h(ZLjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/emoji2/text/d;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_1d
    iget v0, p0, Landroidx/emoji2/text/d;->c:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_3c

    if-nez v0, :cond_2b

    .line 5
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 6
    :cond_2b
    :try_start_2b
    iput v1, p0, Landroidx/emoji2/text/d;->c:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3c

    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    iget-object v0, p0, Landroidx/emoji2/text/d;->e:Landroidx/emoji2/text/d$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/d$b;->a()V

    return-void

    :catchall_3c
    move-exception v0

    .line 9
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0
.end method

.method m(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    .line 3
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/d;->c:I

    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/d;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/d$f;

    iget v3, p0, Landroidx/emoji2/text/d;->c:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/d$f;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_31
    move-exception p1

    .line 8
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method n()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 3
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/d;->c:I

    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/d;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/d$f;

    iget v3, p0, Landroidx/emoji2/text/d;->c:I

    invoke-direct {v2, v0, v3}, Landroidx/emoji2/text/d$f;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_31
    move-exception v0

    .line 8
    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw v0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_9

    .line 1
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2
    :goto_9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/d;->p(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/d;->q(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/d;->r(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .registers 13

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/d;->j()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/h;->h(ZLjava/lang/String;)V

    const-string v0, "start cannot be negative"

    .line 2
    invoke-static {p2, v0}, Landroidx/core/util/h;->d(ILjava/lang/String;)I

    const-string v0, "end cannot be negative"

    .line 3
    invoke-static {p3, v0}, Landroidx/core/util/h;->d(ILjava/lang/String;)I

    const-string v0, "maxEmojiCount cannot be negative"

    .line 4
    invoke-static {p4, v0}, Landroidx/core/util/h;->d(ILjava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, p3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-string v3, "start should be <= than end"

    .line 5
    invoke-static {v2, v3}, Landroidx/core/util/h;->a(ZLjava/lang/Object;)V

    if-nez p1, :cond_28

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    const-string v3, "start should be < than charSequence length"

    invoke-static {v2, v3}, Landroidx/core/util/h;->a(ZLjava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p3, v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    const-string v3, "end should be < than charSequence length"

    invoke-static {v2, v3}, Landroidx/core/util/h;->a(ZLjava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_63

    if-ne p2, p3, :cond_4d

    goto :goto_63

    :cond_4d
    if-eq p5, v1, :cond_58

    const/4 v1, 0x2

    if-eq p5, v1, :cond_56

    .line 9
    iget-boolean v0, p0, Landroidx/emoji2/text/d;->g:Z

    move v6, v0

    goto :goto_59

    :cond_56
    const/4 v6, 0x0

    goto :goto_59

    :cond_58
    const/4 v6, 0x1

    .line 10
    :goto_59
    iget-object v1, p0, Landroidx/emoji2/text/d;->e:Landroidx/emoji2/text/d$b;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/d$b;->b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_63
    :goto_63
    return-object p1
.end method

.method public s(Landroidx/emoji2/text/d$e;)V
    .registers 5

    const-string v0, "initCallback cannot be null"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_e
    iget v0, p0, Landroidx/emoji2/text/d;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroidx/emoji2/text/d;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    goto :goto_1f

    .line 4
    :cond_19
    iget-object v0, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 5
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroidx/emoji2/text/d;->d:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/d$f;

    iget v2, p0, Landroidx/emoji2/text/d;->c:I

    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/d$f;-><init>(Landroidx/emoji2/text/d$e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_35

    .line 6
    :goto_2b
    iget-object p1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_35
    move-exception p1

    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public t(Landroidx/emoji2/text/d$e;)V
    .registers 3

    const-string v0, "initCallback cannot be null"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_e
    iget-object v0, p0, Landroidx/emoji2/text/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1d

    .line 4
    iget-object p1, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception p1

    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public u(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/d;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_9

    goto :goto_19

    .line 2
    :cond_9
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/d;->e:Landroidx/emoji2/text/d$b;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/d$b;->c(Landroid/view/inputmethod/EditorInfo;)V

    :cond_19
    :goto_19
    return-void
.end method

###### Class androidx.emoji2.text.d.a (androidx.emoji2.text.d$a)
.class final Landroidx/emoji2/text/d$a;
.super Landroidx/emoji2/text/d$b;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private volatile b:Landroidx/emoji2/text/g;

.field private volatile c:Landroidx/emoji2/text/l;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/d$b;-><init>(Landroidx/emoji2/text/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroidx/emoji2/text/d$a$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/d$a$a;-><init>(Landroidx/emoji2/text/d$a;)V

    .line 2
    iget-object v1, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    iget-object v1, v1, Landroidx/emoji2/text/d;->f:Landroidx/emoji2/text/d$g;

    invoke-interface {v1, v0}, Landroidx/emoji2/text/d$g;->a(Landroidx/emoji2/text/d$h;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/d;->m(Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$a;->b:Landroidx/emoji2/text/g;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/g;->h(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/view/inputmethod/EditorInfo;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/emoji2/text/d$a;->c:Landroidx/emoji2/text/l;

    invoke-virtual {v1}, Landroidx/emoji2/text/l;->e()I

    move-result v1

    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    iget-boolean v0, v0, Landroidx/emoji2/text/d;->g:Z

    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method d(Landroidx/emoji2/text/l;)V
    .registers 10

    if-nez p1, :cond_f

    .line 1
    iget-object p1, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataRepo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/emoji2/text/d;->m(Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_f
    iput-object p1, p0, Landroidx/emoji2/text/d$a;->c:Landroidx/emoji2/text/l;

    .line 3
    new-instance p1, Landroidx/emoji2/text/g;

    iget-object v3, p0, Landroidx/emoji2/text/d$a;->c:Landroidx/emoji2/text/l;

    new-instance v4, Landroidx/emoji2/text/d$i;

    invoke-direct {v4}, Landroidx/emoji2/text/d$i;-><init>()V

    iget-object v0, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    .line 4
    invoke-static {v0}, Landroidx/emoji2/text/d;->a(Landroidx/emoji2/text/d;)Landroidx/emoji2/text/d$d;

    move-result-object v5

    iget-object v0, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    iget-boolean v6, v0, Landroidx/emoji2/text/d;->h:Z

    iget-object v7, v0, Landroidx/emoji2/text/d;->i:[I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/g;-><init>(Landroidx/emoji2/text/l;Landroidx/emoji2/text/d$i;Landroidx/emoji2/text/d$d;Z[I)V

    iput-object p1, p0, Landroidx/emoji2/text/d$a;->b:Landroidx/emoji2/text/g;

    .line 5
    iget-object p1, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    invoke-virtual {p1}, Landroidx/emoji2/text/d;->n()V

    return-void
.end method

###### Class androidx.emoji2.text.d.a.C0049a (androidx.emoji2.text.d$a$a)
.class Landroidx/emoji2/text/d$a$a;
.super Landroidx/emoji2/text/d$h;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/d$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/emoji2/text/d$a;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/d$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/d$a$a;->a:Landroidx/emoji2/text/d$a;

    invoke-direct {p0}, Landroidx/emoji2/text/d$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$a$a;->a:Landroidx/emoji2/text/d$a;

    iget-object v0, v0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/d;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Landroidx/emoji2/text/l;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$a$a;->a:Landroidx/emoji2/text/d$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/d$a;->d(Landroidx/emoji2/text/l;)V

    return-void
.end method

###### Class androidx.emoji2.text.d.b (androidx.emoji2.text.d$b)
.class Landroidx/emoji2/text/d$b;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Landroidx/emoji2/text/d;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$b;->a:Landroidx/emoji2/text/d;

    invoke-virtual {v0}, Landroidx/emoji2/text/d;->n()V

    return-void
.end method

.method b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .registers 6

    return-object p1
.end method

.method c(Landroid/view/inputmethod/EditorInfo;)V
    .registers 2

    return-void
.end method

###### Class androidx.emoji2.text.d.c (androidx.emoji2.text.d$c)
.class public abstract Landroidx/emoji2/text/d$c;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/emoji2/text/d$g;

.field b:Z

.field c:Z

.field d:[I

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/d$e;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:I

.field h:I

.field i:Landroidx/emoji2/text/d$d;


# direct methods
.method protected constructor <init>(Landroidx/emoji2/text/d$g;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    .line 2
    iput v0, p0, Landroidx/emoji2/text/d$c;->g:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/emoji2/text/d$c;->h:I

    .line 4
    new-instance v0, Landroidx/emoji2/text/g$b;

    invoke-direct {v0}, Landroidx/emoji2/text/g$b;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/d$c;->i:Landroidx/emoji2/text/d$d;

    const-string v0, "metadataLoader cannot be null."

    .line 5
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    return-void
.end method


# virtual methods
.method protected final a()Landroidx/emoji2/text/d$g;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    return-object v0
.end method

.method public b(I)Landroidx/emoji2/text/d$c;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/emoji2/text/d$c;->h:I

    return-object p0
.end method

###### Class androidx.emoji2.text.d.InterfaceC0050d (androidx.emoji2.text.d$d)
.class public interface abstract Landroidx/emoji2/text/d$d;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;III)Z
.end method

###### Class androidx.emoji2.text.d.e (androidx.emoji2.text.d$e)
.class public abstract Landroidx/emoji2/text/d$e;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class androidx.emoji2.text.d.f (androidx.emoji2.text.d$f)
.class Landroidx/emoji2/text/d$f;
.super Ljava/lang/Object;
.source "EmojiCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/text/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/Throwable;

.field private final q:I


# direct methods
.method constructor <init>(Landroidx/emoji2/text/d$e;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/emoji2/text/d$e;

    const-string v1, "initCallback cannot be null"

    .line 1
    invoke-static {p1, v1}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/d$e;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/d$f;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/emoji2/text/d$e;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/d$f;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;ILjava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/emoji2/text/d$e;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initCallbacks cannot be null"

    .line 4
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/emoji2/text/d$f;->o:Ljava/util/List;

    .line 6
    iput p2, p0, Landroidx/emoji2/text/d$f;->q:I

    .line 7
    iput-object p3, p0, Landroidx/emoji2/text/d$f;->p:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/d$f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/emoji2/text/d$f;->q:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    :goto_c
    if-ge v2, v0, :cond_2e

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/d$f;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/d$e;

    iget-object v3, p0, Landroidx/emoji2/text/d$f;->p:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Landroidx/emoji2/text/d$e;->a(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    :goto_1e
    if-ge v2, v0, :cond_2e

    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/d$f;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/d$e;

    invoke-virtual {v1}, Landroidx/emoji2/text/d$e;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

###### Class androidx.emoji2.text.d.g (androidx.emoji2.text.d$g)
.class public interface abstract Landroidx/emoji2/text/d$g;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Landroidx/emoji2/text/d$h;)V
.end method

###### Class androidx.emoji2.text.d.h (androidx.emoji2.text.d$h)
.class public abstract Landroidx/emoji2/text/d$h;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract b(Landroidx/emoji2/text/l;)V
.end method

###### Class androidx.emoji2.text.d.i (androidx.emoji2.text.d$i)
.class Landroidx/emoji2/text/d$i;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroidx/emoji2/text/f;)Landroidx/emoji2/text/h;
    .registers 3

    .line 1
    new-instance v0, Landroidx/emoji2/text/n;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/n;-><init>(Landroidx/emoji2/text/f;)V

    return-object v0
.end method
