###### Class com.google.android.gms.internal.measurement.zzhy (com.google.android.gms.internal.measurement.zzhy)
.class public abstract Lcom/google/android/gms/internal/measurement/zzhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# static fields
.field private static final g:Ljava/lang/Object;

.field private static volatile h:Lcom/google/android/gms/internal/measurement/zzhw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final j:Lcom/google/android/gms/internal/measurement/zzia;

.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic l:I


# instance fields
.field final a:Lcom/google/android/gms/internal/measurement/zzhv;

.field final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private volatile d:I

.field private volatile e:Ljava/lang/Object;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzia;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhp;->a:Lcom/google/android/gms/internal/measurement/zzhp;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;-><init>(Lcom/google/android/gms/internal/measurement/zzhp;[B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->j:Lcom/google/android/gms/internal/measurement/zzia;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzhx;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->d:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzhv;->b:Landroid/net/Uri;

    if-eqz p4, :cond_14

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzhy;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->f:Z

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static d()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->h:Lcom/google/android/gms/internal/measurement/zzhw;

    if-nez v0, :cond_45

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhy;->h:Lcom/google/android/gms/internal/measurement/zzhw;

    if-nez v1, :cond_40

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_42

    :try_start_c
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhy;->h:Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object p0, v2

    :cond_15
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_3b

    .line 2
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhe;->d()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhz;->b()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->d()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhq;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzij;->a(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhb;

    .line 6
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzif;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzhy;->h:Lcom/google/android/gms/internal/measurement/zzhw;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzhy;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0

    .line 9
    :cond_40
    :goto_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->f:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->b:Ljava/lang/String;

    const-string v1, "flagName must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhy;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->d:I

    if-ge v1, v0, :cond_111

    monitor-enter p0

    :try_start_16
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->d:I

    if-ge v1, v0, :cond_10c

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhy;->h:Lcom/google/android/gms/internal/measurement/zzhw;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 4
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzhv;->f:Z

    .line 5
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhv;->g:Z

    const/4 v3, 0x0

    if-nez v2, :cond_62

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v2

    const-string v4, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgz;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 9
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 11
    :cond_62
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhv;->b:Landroid/net/Uri;

    if-eqz v2, :cond_8d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 13
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhv;->b:Landroid/net/Uri;

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhn;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 15
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhv;->h:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhv;->b:Landroid/net/Uri;

    .line 17
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhe;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzhe;

    move-result-object v2

    goto :goto_99

    :cond_8b
    move-object v2, v3

    goto :goto_99

    .line 18
    :cond_8d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 19
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhv;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzhz;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v2

    :goto_99
    if-eqz v2, :cond_aa

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhj;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_aa

    .line 21
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_ab

    :cond_aa
    :goto_aa
    move-object v2, v3

    :goto_ab
    if-eqz v2, :cond_ae

    goto :goto_d6

    .line 22
    :cond_ae
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 23
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhv;->e:Z

    if-nez v2, :cond_d1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->a()Landroid/content/Context;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    .line 25
    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/zzhv;->e:Z

    if-eqz v4, :cond_c4

    move-object v4, v3

    goto :goto_c6

    :cond_c4
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhy;->b:Ljava/lang/String;

    .line 26
    :goto_c6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d1

    .line 27
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d2

    :cond_d1
    move-object v2, v3

    :goto_d2
    if-nez v2, :cond_d6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->c:Ljava/lang/Object;

    .line 28
    :cond_d6
    :goto_d6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->b()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzid;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->b()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhg;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzhv;->b:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhv;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzhy;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzhg;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_fd

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->c:Ljava/lang/Object;

    goto :goto_101

    .line 33
    :cond_fd
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    :cond_101
    :goto_101
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->d:I

    goto :goto_10c

    .line 35
    :cond_106
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_10c
    :goto_10c
    monitor-exit p0

    goto :goto_111

    :catchall_10e
    move-exception v0

    monitor-exit p0
    :try_end_110
    .catchall {:try_start_16 .. :try_end_110} :catchall_10e

    throw v0

    :cond_111
    :goto_111
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->a:Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhv;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzhq (com.google.android.gms.internal.measurement.zzhq)
.class public final synthetic Lcom/google/android/gms/internal/measurement/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# instance fields
.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 15

    const-string v0, "HermeticFileOverrides"

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->o:Landroid/content/Context;

    sget v2, Lcom/google/android/gms/internal/measurement/zzhy;->l:I

    .line 1
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "userdebug"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_2c

    :cond_1b
    const-string v2, "dev-keys"

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "test-keys"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_32

    .line 3
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->c()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    goto/16 :goto_158

    .line 4
    :cond_32
    :goto_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzha;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v2

    if-nez v2, :cond_42

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 7
    :cond_42
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 8
    :try_start_46
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_159

    const/4 v3, 0x0

    :try_start_4a
    new-instance v4, Ljava/io/File;

    const-string v5, "phenotype_hermetic"

    .line 9
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v5, "overrides.txt"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_57} :catch_67
    .catchall {:try_start_4a .. :try_end_57} :catchall_159

    .line 10
    :try_start_57
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzid;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v1

    goto :goto_71

    .line 11
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->c()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v1

    goto :goto_71

    :catch_67
    move-exception v1

    const-string v4, "no data dir"

    .line 12
    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->c()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v1

    .line 13
    :goto_71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->b()Z

    move-result v4

    if-eqz v4, :cond_151

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_7d
    .catchall {:try_start_57 .. :try_end_7d} :catchall_159

    :try_start_7d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    .line 15
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8c} :catch_14a
    .catchall {:try_start_7d .. :try_end_8c} :catchall_159

    const/4 v5, 0x1

    :try_start_8d
    new-instance v6, Ljava/util/HashMap;

    .line 16
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    .line 17
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 18
    :goto_97
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_109

    const-string v9, " "

    const/4 v10, 0x3

    .line 19
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 20
    array-length v11, v9

    if-eq v11, v10, :cond_bc

    new-instance v9, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 22
    :cond_bc
    aget-object v8, v9, v3

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    aget-object v8, v9, v5

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    .line 24
    aget-object v12, v9, v11

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_f1

    .line 25
    aget-object v9, v9, v11

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v13, 0x400

    if-lt v9, v13, :cond_ee

    if-ne v12, v11, :cond_f1

    .line 28
    :cond_ee
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_f1
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ff

    new-instance v9, Ljava/util/HashMap;

    .line 30
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_ff
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 32
    :cond_109
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Ljava/util/Map;)V
    :try_end_126
    .catchall {:try_start_8d .. :try_end_126} :catchall_12e

    .line 33
    :try_start_126
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_14a
    .catchall {:try_start_126 .. :try_end_129} :catchall_159

    :try_start_129
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzid;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_159

    goto :goto_155

    :catchall_12e
    move-exception v0

    .line 34
    :try_start_12f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_133

    goto :goto_149

    :catchall_133
    move-exception v1

    :try_start_134
    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v3

    const-class v6, Ljava/lang/Throwable;

    const-string v7, "addSuppressed"

    .line 35
    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_149} :catch_149
    .catchall {:try_start_134 .. :try_end_149} :catchall_159

    .line 36
    :catch_149
    :goto_149
    :try_start_149
    throw v0
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14a} :catch_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_159

    :catch_14a
    move-exception v0

    .line 37
    :try_start_14b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 39
    :cond_151
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->c()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0
    :try_end_155
    .catchall {:try_start_14b .. :try_end_155} :catchall_159

    :goto_155
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_158
    return-object v0

    :catchall_159
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 40
    goto :goto_15f

    :goto_15e
    throw v0

    :goto_15f
    goto :goto_15e
.end method
