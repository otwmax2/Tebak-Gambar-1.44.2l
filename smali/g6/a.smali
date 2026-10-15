###### Class g6.a (g6.a)
.class public final Lg6/a;
.super Ljava/lang/Object;
.source "AtProtobuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lg6/d$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lg6/d$a;->o:Lg6/d$a;

    iput-object v0, p0, Lg6/a;->b:Lg6/d$a;

    return-void
.end method

.method public static b()Lg6/a;
    .registers 1

    .line 1
    new-instance v0, Lg6/a;

    invoke-direct {v0}, Lg6/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lg6/d;
    .registers 4

    .line 1
    new-instance v0, Lg6/a$a;

    iget v1, p0, Lg6/a;->a:I

    iget-object v2, p0, Lg6/a;->b:Lg6/d$a;

    invoke-direct {v0, v1, v2}, Lg6/a$a;-><init>(ILg6/d$a;)V

    return-object v0
.end method

.method public c(I)Lg6/a;
    .registers 2

    .line 1
    iput p1, p0, Lg6/a;->a:I

    return-object p0
.end method

###### Class g6.a.C0164a (g6.a$a)
.class final Lg6/a$a;
.super Ljava/lang/Object;
.source "AtProtobuf.java"

# interfaces
.implements Lg6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lg6/d$a;


# direct methods
.method constructor <init>(ILg6/d$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lg6/a$a;->a:I

    .line 3
    iput-object p2, p0, Lg6/a$a;->b:Lg6/d$a;

    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lg6/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lg6/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lg6/d;

    .line 3
    iget v1, p0, Lg6/a$a;->a:I

    invoke-interface {p1}, Lg6/d;->tag()I

    move-result v3

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Lg6/a$a;->b:Lg6/d$a;

    .line 4
    invoke-interface {p1}, Lg6/d;->intEncoding()Lg6/d$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lg6/a$a;->a:I

    const v1, 0xde0d66

    xor-int/2addr v0, v1

    iget-object v1, p0, Lg6/a$a;->b:Lg6/d$a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    const v2, 0x79ad669e

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public intEncoding()Lg6/d$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lg6/a$a;->b:Lg6/d$a;

    return-object v0
.end method

.method public tag()I
    .registers 2

    .line 1
    iget v0, p0, Lg6/a$a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@com.google.firebase.encoders.proto.Protobuf"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "tag="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg6/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "intEncoding="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg6/a$a;->b:Lg6/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
