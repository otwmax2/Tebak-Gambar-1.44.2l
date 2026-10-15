###### Class com.google.android.play.core.assetpacks.r1 (com.google.android.play.core.assetpacks.r1)
.class public final Lcom/google/android/play/core/assetpacks/r1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static a:Ls4/a;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;)Ls4/a;
    .registers 4

    const-class v0, Lcom/google/android/play/core/assetpacks/r1;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/play/core/assetpacks/r1;->a:Ls4/a;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/google/android/play/core/assetpacks/v0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/assetpacks/v0;-><init>(Ls4/b;)V

    new-instance v2, Lcom/google/android/play/core/assetpacks/n3;

    invoke-static {p0}, Lv4/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/n3;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/v0;->b(Lcom/google/android/play/core/assetpacks/n3;)Lcom/google/android/play/core/assetpacks/v0;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/v0;->a()Ls4/a;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/assetpacks/r1;->a:Ls4/a;

    :cond_1f
    sget-object p0, Lcom/google/android/play/core/assetpacks/r1;->a:Ls4/a;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method
