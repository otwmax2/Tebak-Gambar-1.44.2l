###### Class com.google.android.play.core.assetpacks.r2 (com.google.android.play.core.assetpacks.r2)
.class final Lcom/google/android/play/core/assetpacks/r2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final c:Lv4/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "PackageStateCache"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/r2;->c:Lv4/a;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/r2;->b:I

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/r2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/r2;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/r2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/r2;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/google/android/play/core/assetpacks/r2;->b:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1b} :catch_1c
    .catchall {:try_start_7 .. :try_end_1b} :catchall_29

    goto :goto_25

    :catch_1c
    :try_start_1c
    sget-object v1, Lcom/google/android/play/core/assetpacks/r2;->c:Lv4/a;

    const-string v2, "The current version of the app could not be retrieved"

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2, v0}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    :cond_25
    :goto_25
    iget v0, p0, Lcom/google/android/play/core/assetpacks/r2;->b:I
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_29

    monitor-exit p0

    return v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
