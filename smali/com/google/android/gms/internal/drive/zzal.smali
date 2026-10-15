###### Class com.google.android.gms.internal.drive.zzal (com.google.android.gms.internal.drive.zzal)
.class final Lcom/google/android/gms/internal/drive/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/drive/DriveContents;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzal;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzal;->p:Lcom/google/android/gms/drive/DriveContents;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzal;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzal;->p:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->h()V

    :cond_7
    return-void
.end method
