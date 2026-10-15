###### Class com.google.android.gms.drive.CreateFileActivityOptions (com.google.android.gms.drive.CreateFileActivityOptions)
.class public final Lcom/google/android/gms/drive/CreateFileActivityOptions;
.super Lcom/google/android/gms/internal/drive/zzq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
    }
.end annotation

###### Class com.google.android.gms.drive.CreateFileActivityOptions.Builder (com.google.android.gms.drive.CreateFileActivityOptions$Builder)
.class public Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/CreateFileActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/drive/CreateFileActivityBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->a:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-void
.end method
