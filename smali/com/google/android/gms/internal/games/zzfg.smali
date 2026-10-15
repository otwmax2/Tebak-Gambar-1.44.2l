###### Class com.google.android.gms.internal.games.zzfg (com.google.android.gms.internal.games.zzfg)
.class public final Lcom/google/android/gms/internal/games/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->c:I

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->d:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->e:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->f:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->g:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/games/zzfg;->b:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfg;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->b:I

    const-string v2, "popupLocationInfo.gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->c:I

    const-string v2, "popupLocationInfo.displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->d:I

    const-string v2, "popupLocationInfo.left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->e:I

    const-string v2, "popupLocationInfo.top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->f:I

    const-string v2, "popupLocationInfo.right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->g:I

    const-string v2, "popupLocationInfo.bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
