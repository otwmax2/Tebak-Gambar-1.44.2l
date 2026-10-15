###### Class com.google.android.gms.drive.OpenFileActivityOptions (com.google.android.gms.drive.OpenFileActivityOptions)
.class public final Lcom/google/android/gms/drive/OpenFileActivityOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:Lcom/google/android/gms/drive/query/internal/FilterHolder;

.field public final d:Lcom/google/android/gms/drive/DriveId;

###### Class com.google.android.gms.drive.OpenFileActivityOptions.Builder (com.google.android.gms.drive.OpenFileActivityOptions$Builder)
.class public Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/OpenFileActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/drive/OpenFileActivityBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->a:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-void
.end method
