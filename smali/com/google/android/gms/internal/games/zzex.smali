###### Class com.google.android.gms.internal.games.zzex (com.google.android.gms.internal.games.zzex)
.class final Lcom/google/android/gms/internal/games/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;


# instance fields
.field private final synthetic o:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzeu;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzex;->o:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzex;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
