###### Class androidx.datastore.preferences.protobuf.l1 (androidx.datastore.preferences.protobuf.l1)
.class final Landroidx/datastore/preferences/protobuf/l1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/l1$b;
    }
.end annotation


# direct methods
.method static a(Landroidx/datastore/preferences/protobuf/h;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/l1$a;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/l1$a;-><init>(Landroidx/datastore/preferences/protobuf/h;)V

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/l1;->b(Landroidx/datastore/preferences/protobuf/l1$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroidx/datastore/preferences/protobuf/l1$b;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/l1$b;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_a
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/l1$b;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 3
    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/l1$b;->a(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_86

    const/16 v3, 0x27

    if-eq v2, v3, :cond_80

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7a

    packed-switch v2, :pswitch_data_94

    const/16 v4, 0x20

    if-lt v2, v4, :cond_30

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_30

    int-to-char v2, v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 5
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_50
    const-string v2, "\\r"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_56
    const-string v2, "\\f"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_5c
    const-string v2, "\\v"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_62
    const-string v2, "\\n"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_68
    const-string v2, "\\t"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_6e
    const-string v2, "\\b"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :pswitch_74
    const-string v2, "\\a"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :cond_7a
    const-string v2, "\\\\"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :cond_80
    const-string v2, "\\\'"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :cond_86
    const-string v2, "\\\""

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 19
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
    .end packed-switch
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/h;->m(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/l1;->a(Landroidx/datastore/preferences/protobuf/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.datastore.preferences.protobuf.l1.a (androidx.datastore.preferences.protobuf.l1$a)
.class final Landroidx/datastore/preferences/protobuf/l1$a;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/l1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/l1;->a(Landroidx/datastore/preferences/protobuf/h;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/datastore/preferences/protobuf/h;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/l1$a;->a:Landroidx/datastore/preferences/protobuf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l1$a;->a:Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h;->g(I)B

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l1$a;->a:Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v0

    return v0
.end method

###### Class androidx.datastore.preferences.protobuf.l1.b (androidx.datastore.preferences.protobuf.l1$b)
.class interface abstract Landroidx/datastore/preferences/protobuf/l1$b;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "b"
.end annotation


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract size()I
.end method
