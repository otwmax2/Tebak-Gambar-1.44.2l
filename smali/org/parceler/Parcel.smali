###### Class org.parceler.Parcel (org.parceler.Parcel)
.class public interface abstract annotation Lorg/parceler/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/parceler/Parcel;
        analyze = {}
        converter = Lua/c;
        describeContents = 0x0
        implementations = {}
        value = .enum Lorg/parceler/Parcel$a;->o:Lorg/parceler/Parcel$a;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/Parcel$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

###### Class org.parceler.Parcel.a (org.parceler.Parcel$a)
.class public final enum Lorg/parceler/Parcel$a;
.super Ljava/lang/Enum;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/parceler/Parcel$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lorg/parceler/Parcel$a;

.field public static final enum p:Lorg/parceler/Parcel$a;

.field public static final enum q:Lorg/parceler/Parcel$a;

.field private static final synthetic r:[Lorg/parceler/Parcel$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lorg/parceler/Parcel$a;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/parceler/Parcel$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/parceler/Parcel$a;->o:Lorg/parceler/Parcel$a;

    .line 2
    new-instance v1, Lorg/parceler/Parcel$a;

    const-string v3, "BEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/parceler/Parcel$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/parceler/Parcel$a;->p:Lorg/parceler/Parcel$a;

    .line 3
    new-instance v3, Lorg/parceler/Parcel$a;

    const-string v5, "VALUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/parceler/Parcel$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/parceler/Parcel$a;->q:Lorg/parceler/Parcel$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/parceler/Parcel$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/parceler/Parcel$a;->r:[Lorg/parceler/Parcel$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/parceler/Parcel$a;
    .registers 2

    .line 1
    const-class v0, Lorg/parceler/Parcel$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/parceler/Parcel$a;

    return-object p0
.end method

.method public static values()[Lorg/parceler/Parcel$a;
    .registers 1

    .line 1
    sget-object v0, Lorg/parceler/Parcel$a;->r:[Lorg/parceler/Parcel$a;

    invoke-virtual {v0}, [Lorg/parceler/Parcel$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/parceler/Parcel$a;

    return-object v0
.end method
