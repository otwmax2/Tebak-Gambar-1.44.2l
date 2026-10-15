###### Class com.google.android.gms.internal.drive.zzdp (com.google.android.gms.internal.drive.zzdp)
.class public Lcom/google/android/gms/internal/drive/zzdp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# instance fields
.field protected final a:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdp;->a:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdp;->a:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method
