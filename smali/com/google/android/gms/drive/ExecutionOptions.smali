###### Class com.google.android.gms.drive.ExecutionOptions (com.google.android.gms.drive.ExecutionOptions)
.class public Lcom/google/android/gms/drive/ExecutionOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:I


# virtual methods
.method public final a(Lcom/google/android/gms/internal/drive/zzaw;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->b:Z

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->t0()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_13

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->b:Z

    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_2b

    :cond_e
    const/4 v1, 0x1

    if-ne p1, p0, :cond_12

    return v1

    .line 2
    :cond_12
    check-cast p1, Lcom/google/android/gms/drive/ExecutionOptions;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->c:I

    iget v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->c:I

    if-ne v2, v3, :cond_2b

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->b:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/ExecutionOptions;->b:Z

    if-ne v2, p1, :cond_2b

    return v1

    :cond_2b
    :goto_2b
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.drive.ExecutionOptions.Builder (com.google.android.gms.drive.ExecutionOptions$Builder)
.class public Lcom/google/android/gms/drive/ExecutionOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/ExecutionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->a:I

    return-void
.end method
