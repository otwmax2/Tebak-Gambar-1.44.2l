###### Class g6.d (g6.d)
.class public interface abstract annotation Lg6/d;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lg6/d;
        intEncoding = .enum Lg6/d$a;->o:Lg6/d$a;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6/d$a;
    }
.end annotation


# virtual methods
.method public abstract intEncoding()Lg6/d$a;
.end method

.method public abstract tag()I
.end method

###### Class g6.d.a (g6.d$a)
.class public final enum Lg6/d$a;
.super Ljava/lang/Enum;
.source "Protobuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg6/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lg6/d$a;

.field public static final enum p:Lg6/d$a;

.field public static final enum q:Lg6/d$a;

.field private static final synthetic r:[Lg6/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lg6/d$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg6/d$a;->o:Lg6/d$a;

    .line 2
    new-instance v1, Lg6/d$a;

    const-string v3, "SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg6/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg6/d$a;->p:Lg6/d$a;

    .line 3
    new-instance v3, Lg6/d$a;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg6/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg6/d$a;->q:Lg6/d$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lg6/d$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lg6/d$a;->r:[Lg6/d$a;

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

.method public static valueOf(Ljava/lang/String;)Lg6/d$a;
    .registers 2

    .line 1
    const-class v0, Lg6/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg6/d$a;

    return-object p0
.end method

.method public static values()[Lg6/d$a;
    .registers 1

    .line 1
    sget-object v0, Lg6/d$a;->r:[Lg6/d$a;

    invoke-virtual {v0}, [Lg6/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg6/d$a;

    return-object v0
.end method
