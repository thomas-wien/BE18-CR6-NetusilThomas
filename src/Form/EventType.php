<?php

namespace App\Form;

use App\Entity\Event;
use App\Entity\Status;
use Doctrine\DBAL\Types\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FormType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType as TypeTextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichFileType;
use Vich\UploaderBundle\Form\Type\VichImageType;
class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add(
            'name',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter a Event Name', 'style' => 'margin-bottom:15px']
            ]
        )            
            ->add('date')
        ->add(
            'description',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter a Event Description', 'style' => 'margin-bottom:15px']                ]
          )        
          ->add(
            'LongDescription',
            TypeTextType::class,
            [
                'attr' => ['textarea class' => 'form-control', 'placeholder' => 'Please enter the details of the Event', 'style' => 'height: 100px; margin-bottom:15px']
            ]
        )
        ->add(
            'location',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the location Name', 'style' => 'margin-bottom:15px']                ]
          )   
        ->add(
            'capacity',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the allowed Capacity 0 if no estriction 0 ', 'style' => 'margin-bottom:15px']                ]
          )   
        ->add(
            'email',
            EmailType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the email of the location', 'style' => 'margin-bottom:15px']                ]
          )  
        ->add(
            'phone',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the phonenumber of the location', 'style' => 'margin-bottom:15px']                ]
          )  
          ->add(
            'street',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the street of the location', 'style' => 'margin-bottom:15px']                ]
          )        
          ->add(
            'number',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the number of the street', 'style' => 'margin-bottom:15px']                ]
          )       
           ->add(
            'zip',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the zip code of the location', 'style' => 'margin-bottom:15px']                ]
          ) 
          ->add(
            'city',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the zip city of the location', 'style' => 'margin-bottom:15px']                ]
          ) 
          ->add(
            'url',
            TypeTextType::class,
            [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Please enter the zip url of the location', 'style' => 'margin-bottom:15px']                ]
          ) 
       
          ->add('typa', ChoiceType::class, [
            'choices' => ['music' => 'music', 'exhibition' => 'exhibition', 'opera' => 'opera', 'movie' => 'movie', 'theatre' => 'theatre'],
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
   

            ->add('imageFile', VichImageType::class, [
                'required' => false,
                'allow_delete' => false,
                // 'delete_label' => '...',
                // 'download_uri' => '...',
                'download_label' => false,
                'asset_helper' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
