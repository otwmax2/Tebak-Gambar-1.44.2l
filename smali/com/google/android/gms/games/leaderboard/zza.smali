###### Class com.google.android.gms.games.leaderboard.zza (com.google.android.gms.games.leaderboard.zza)
.class public final Lcom/google/android/gms/games/leaderboard/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/zza;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/zza;->a:Landroid/os/Bundle;

    return-object v0
.end method
