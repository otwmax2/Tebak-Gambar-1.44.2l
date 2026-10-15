###### Class com.google.android.gms.drive.TransferPreferences (com.google.android.gms.drive.TransferPreferences)
.class public interface abstract Lcom/google/android/gms/drive/TransferPreferences;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferences$BatteryUsage;,
        Lcom/google/android/gms/drive/TransferPreferences$NetworkType;
    }
.end annotation


# virtual methods
.method public abstract H()Z
.end method

.method public abstract S()I
.end method

.method public abstract w1()I
.end method

###### Class com.google.android.gms.drive.TransferPreferences.BatteryUsage (com.google.android.gms.drive.TransferPreferences$BatteryUsage)
.class public interface abstract annotation Lcom/google/android/gms/drive/TransferPreferences$BatteryUsage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BatteryUsage"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.drive.TransferPreferences.NetworkType (com.google.android.gms.drive.TransferPreferences$NetworkType)
.class public interface abstract annotation Lcom/google/android/gms/drive/TransferPreferences$NetworkType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
