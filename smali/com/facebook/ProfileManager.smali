###### Class com.facebook.ProfileManager (com.facebook.ProfileManager)
.class public final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfileManager$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field public static final Companion:Lcom/facebook/ProfileManager$Companion;

.field public static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field public static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfileField:Lcom/facebook/Profile;

.field private final localBroadcastManager:Lu0/a;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/ProfileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/ProfileManager$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    return-void
.end method

.method public constructor <init>(Lu0/a;Lcom/facebook/ProfileCache;)V
    .registers 4

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Lu0/a;

    .line 3
    iput-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/facebook/ProfileManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/facebook/ProfileManager;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/facebook/ProfileManager;
    .registers 2

    const-class v0, Lcom/facebook/ProfileManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    invoke-virtual {v1}, Lcom/facebook/ProfileManager$Companion;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Lu0/a;

    invoke-virtual {p1, v0}, Lu0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method private final setCurrentProfile(Lcom/facebook/Profile;Z)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    .line 3
    iput-object p1, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    if-eqz p2, :cond_13

    if-eqz p1, :cond_e

    .line 4
    iget-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {p2, p1}, Lcom/facebook/ProfileCache;->save(Lcom/facebook/Profile;)V

    goto :goto_13

    .line 5
    :cond_e
    iget-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {p2}, Lcom/facebook/ProfileCache;->clear()V

    .line 6
    :cond_13
    :goto_13
    sget-object p2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/facebook/ProfileManager;->sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final getCurrentProfile()Lcom/facebook/Profile;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    return-object v0
.end method

.method public final loadCurrentProfile()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v0}, Lcom/facebook/ProfileCache;->load()Lcom/facebook/Profile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public final setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    return-void
.end method

###### Class com.facebook.ProfileManager.Companion (com.facebook.ProfileManager$Companion)
.class public final Lcom/facebook/ProfileManager$Companion;
.super Ljava/lang/Object;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ProfileManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getInstance()Lcom/facebook/ProfileManager;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0

    if-nez v0, :cond_23

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/facebook/ProfileManager;

    new-instance v2, Lcom/facebook/ProfileCache;

    invoke-direct {v2}, Lcom/facebook/ProfileCache;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/facebook/ProfileManager;-><init>(Lu0/a;Lcom/facebook/ProfileCache;)V

    invoke-static {v1}, Lcom/facebook/ProfileManager;->access$setInstance$cp(Lcom/facebook/ProfileManager;)V

    .line 5
    :cond_23
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_32

    if-eqz v0, :cond_2b

    monitor-exit p0

    return-object v0

    :cond_2b
    :try_start_2b
    const-string v0, "instance"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
