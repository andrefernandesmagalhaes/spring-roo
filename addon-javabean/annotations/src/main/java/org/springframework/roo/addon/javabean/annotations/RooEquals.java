package org.springframework.roo.addon.javabean.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Creates equals and hashCode methods.
 * 
 * @author Alan Stewart
 * @author Sergio Clares
 * @since 1.2.0
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.SOURCE)
public @interface RooEquals {

  boolean appendSuper() default false;

  /**
   * @return an array of fields exclude in the equals and hashCode methods.
   */
  String[] excludeFields() default "";

  /**
   * @return `true` if annotated type is a JPA Entity, `false` otherwise. 
   */
  boolean isJpaEntity() default false;
}
