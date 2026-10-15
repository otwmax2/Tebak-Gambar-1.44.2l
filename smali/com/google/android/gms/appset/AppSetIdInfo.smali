###### Class com.google.android.gms.appset.AppSetIdInfo (com.google.android.gms.appset.AppSetIdInfo)
.class public Lcom/google/android/gms/appset/AppSetIdInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appset/AppSetIdInfo$Scope;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->b:I

    return v0
.end method

###### Class com.google.android.gms.appset.AppSetIdInfo.Scope (com.google.android.gms.appset.AppSetIdInfo$Scope)
.class public interface abstract annotation Lcom/google/android/gms/appset/AppSetIdInfo$Scope;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appset/AppSetIdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Scope"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
