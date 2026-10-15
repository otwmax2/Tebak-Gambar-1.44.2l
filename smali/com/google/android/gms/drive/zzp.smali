###### Class com.google.android.gms.drive.zzp (com.google.android.gms.drive.zzp)
.class public final Lcom/google/android/gms/drive/zzp;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzp;->b:Z

    return-void
.end method
